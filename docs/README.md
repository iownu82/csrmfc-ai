# BIS3 Defense / CSRMFC AI — Documentation

Canonical documentation for the BIS3 Defense GovCloud platform. Technical
and compliance documentation lives in this tree, versioned with the code.

**Policy (established 2026-09-12):** New technical or compliance content
goes here as markdown. Third-party SaaS holding compliance content becomes
a CM-8 / SI-12 finding under FedRAMP.

## Tree

- `architecture/` — system design, auth flows, infrastructure
- `compliance/` — RMF, CMMC, FIPS, DoD baseline, SSP drafts (in `ssp-drafts/`)
- `operations/` — onboarding, deployment, runbooks
- `decisions/` — architecture decision records (ADRs), one per decision

## Conventions

- Filenames: lowercase-hyphenated `.md`
- Reference AWS resources by resource name, not ARN, to keep the tree
  publishable without leaking infrastructure detail
- Real ARNs, account IDs, secrets, and keys stay in Terraform state and
  environment variables — never here

## Migration status

Migration from Notion RiskRadar workspace started 2026-09-12.
See `MIGRATION.md` for tracking.
