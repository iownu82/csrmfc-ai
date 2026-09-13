# Notion → Repo Archive

**Approach:** Full workspace export archived, no per-page migration.

**Rationale:** Notion RiskRadar workspace was untouched for ~6 months as of
2026-09-12 and holds mostly business/planning content. Full export preserves
the record without the ongoing FedRAMP posture concern of active SaaS use.

## Steps

- [x] Decision to export + archive (2026-09-12)
- [ ] Trigger Notion export (Settings → Export all workspace content, Markdown+CSV)
- [ ] Wait for email with ZIP
- [ ] Move ZIP to docs/archive/notion-2026-09-12/
- [ ] Extract, verify contents readable
- [ ] Commit archive to repo
- [ ] Cancel Notion subscription (or downgrade to free)
- [ ] Delete Notion account 90 days out (calendar reminder)

## New content policy

New technical or compliance docs go in docs/ as markdown, not Notion.
Business/planning content that doesn't need FedRAMP posture — pick your
tool of choice (Google Docs, plain markdown, whatever works).
