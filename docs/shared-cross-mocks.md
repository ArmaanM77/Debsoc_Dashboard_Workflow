# Shared cross mocks

`20261027_shared_cross_mocks.sql` is additive. It does not modify existing
Tabbycat debate data, profiles or tournament entries. The retired per-account
`dk_cross_mock_entries` schema is not required by this implementation.

## Record and identity rules

- The current form needs a date, AP/BP format and motion. Against (one or more universities)
  and infoslide are optional. Historical round/room labels remain stored, but are not requested.
- `dk_cross_submit_simple` matches within an exact date/format. Motion punctuation, THW/THBT
  prefixes and minor spelling edits are supported. Changed negations, numbers, stance words
  and substantive wording are not treated as spelling corrections. Low-confidence or multiple
  potential matches are rejected for review instead of guessed or saved as another copy.
- University lists are order-independent and accept common acronyms/long forms (e.g. IITD /
  Indian Institute of Technology Delhi). Different known opponents keep debates separate.
  Blank opponents mean unknown, not a different debate; a later submission may fill that blank.
- The date/format lock serialises even simultaneous spelling variants. Each shared debate has
  one participant row per registered person. Matching always retains the first motion text.
- Team identity comes from overlapping members, not an account-local Team 1 label. Disjoint
  complete teams allocate free slots; reversed team order and repeat submissions reuse old slots.
  For an ambiguous partial group, include a recorded teammate to identify the existing team,
  or select an unused team number explicitly for a separate team. Never infer unseen membership.
- Existing ambiguous legacy records are not retroactively merged or deleted. Repeated real
  debates with indistinguishable date/format/motion/opponents cannot be distinguished from
  those fields alone; such historical ambiguity requires administrator review.
- AP supports two teams of three; BP supports three teams of two. Adjudicators are uncapped.
- Speakers and adjudicators must be in the registered society roster. No free-text names.
- Speaker score (60–100, half steps) and adjudicator score (1–10, half steps) are optional.
  Missing scores stay NULL, never zero. Conflicting recorded scores/roles/teams fail atomically.
- A verified Google account linked to the selected society name is required to write.
  Logging confirms only the account holder. Teammates are pending until they confirm or
  submit the same debate themselves. Only confirmed participation affects individual totals,
  averages and leaderboards. Public records label pending participation explicitly.
- Removing participation is a soft withdrawal of the caller's own row, not deletion of the debate.
  Reconfirmation cannot bypass team capacities. Historical data remains recoverable.
- Raw tables are inaccessible to anonymous/authenticated clients. Read RPCs explicitly
  project public debate fields, registered names, scores and confirmation states. Account
  identifiers, emails and profile configuration are never in the cross-mock feeds.

## Activation

1. Merge only after isolated PostgreSQL tests pass on the PR.
2. Manually run **Activate shared cross mocks** on main. This reruns isolated tests,
   then invokes the existing encrypted full Supabase backup workflow.
3. Installation depends on backup success. It applies the SQL in one transaction and
   imports the validated society Sheet into `dk_cross_roster`.
4. Deploy the frontend only after both public read RPCs succeed and private-table access fails.

The existing two-hour society sync refreshes the name allowlist. Invalid or empty sheets
are rejected before any roster changes. Names removed from the sheet are deactivated,
not deleted, preserving past debate records. No change to the weekly-only DebateData sync.

Cross-mock motions are intentionally separate from the main motion catalogue. They appear
only on their own debate records, cross-mock archive and member histories.
