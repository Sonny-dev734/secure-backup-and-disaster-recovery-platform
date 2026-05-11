# 01 - Risk Assessment

## Threat Model

| Risk | Probability | Impact | Mitigation |
|------|-------------|--------|----------|
| Hard drive failure | High | High | Regular encrypted backups + restore testing |
| Laptop theft | Medium | High | Full disk encryption + offsite backup |
| Ransomware | Medium | High | Immutable snapshots + client-side encryption |
| Accidental deletion | High | Medium | Versioning via Restic snapshots |
| Natural disaster (fire/flood) | Low | High | 3-2-1 rule implementation |

**RPO Target**: 24 hours maximum  
**RTO Target**: 4 hours for critical data

