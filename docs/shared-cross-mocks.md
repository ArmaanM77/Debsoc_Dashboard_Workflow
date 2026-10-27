# Shared cross mocks

`20261027_shared_cross_mocks.sql` is additive. It does not modify existing
Tabbycat debate data, profiles or tournament entries. The retired per-account
`dk_cross_mock_entries` schema is not required by this implementation.

## Record and identity rules

- A debate has a date, AP/BP format, Against, round/room, mandatory motion and optional infoslide.
- The normalized date/format/Against/round-room/motion identity is unique. Two teammates,
  two teams or simultaneous submissions merge into one debate with one row per person.
- Use the existing-debate selector to avoid spelling differences when joining a record.
  Different rounds/rooms never collapse into the same debate.
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
