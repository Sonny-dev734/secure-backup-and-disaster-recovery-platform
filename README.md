# Secure Backup and Disaster Recovery Platform

**Author**: Sonny  
**Project Type**: Portfolio Project for Titre Professionnel d'Administrateur d’Infrastructures Sécurisées (AIS) – RNCP Level 6  
**Date**: May 2026  
**Environment**: Linux Mint XFCE (4GB RAM workstation)

---

## Executive Summary

This project implements a complete, secure, local backup and disaster recovery solution using the open-source tool Restic. 

Developed during my professional reconversion, it demonstrates real-world competencies required for the role of **Administrateur d’Infrastructures Sécurisées**: secure data management, strong encryption, risk analysis, business continuity planning, disaster recovery procedures, and high-quality technical documentation.

The solution is 100% local, ethical, manual, and optimized for low-resource machines while following modern industry best practices.

---

## Project Objectives

- Design and implement a reliable and secure backup system
- Apply strong client-side encryption (AES-256)
- Create clear, professional and auditable documentation
- Perform risk analysis and define mitigation measures
- Document disaster recovery (restore) procedures
- Demonstrate practical understanding of the CIA triad (Confidentiality, Integrity, Availability)
- Build a standout portfolio project for alternance applications in Paris

---

## Key Concepts

- **Backup**: Creation of copies of critical data to ensure recoverability.
- **Disaster Recovery (DR)**: Policies, tools and procedures to restore systems and data after an incident.
- **Restic**: Modern, secure backup tool with built-in AES-256 encryption, deduplication, compression and snapshots.
- **AES-256**: Industry-standard strong encryption algorithm (256-bit keys).
- **3-2-1 Backup Rule**: 3 copies of data, on 2 different media types, with 1 copy off-site.
- **Snapshot**: Point-in-time version of the data for safe restoration.

---

## Architecture
+===============================+
|      Linux Workstation        |
|        (Linux Mint XFCE)      |
+===============+===============+
|
| Critical Data
| (Documents, Projects, .ssh, .gnupg...)
v
+---------------+---------------+
|             Restic              |
|        Backup Engine            |
+---------------+---------------+
|
+---------------v---------------+
|       AES-256 Encryption        |
|         (Client-side)           |
+---------------+---------------+
|
+---------------v---------------+
|     Local Encrypted Repository   |
|   ~/SecureBackups/restic-repo    |
+===============================+


**Current 3-2-1 Status**: 2/3 (Original data + Encrypted local repository)  
**Planned improvement**: Add external USB drive for full compliance.

---

## Repository Structure

| Folder / File                        | Purpose |
|--------------------------------------|-------|
| `README.md`                          | Main project documentation |
| `docs/`                              | Professional documentation (Risk Assessment, Backup Policy, DR Plan, etc.) |
| `scripts/backup-daily.sh`            | Main encrypted backup script |
| `scripts/health-check.sh`            | Repository integrity and health verification |
| `scripts/restore-test.sh`            | Restore procedure and testing guide |
| `scripts/generate-report.py`         | Generates clean HTML reports for recruiters |
| `config/`                            | Configuration files (paths, exclusions, settings) |
| `reports/`                           | Generated professional reports |
| `logs/`                              | Execution logs |
| `SecureBackups/restic-repo/`         | Encrypted backup repository |

---

## Security Measures

- Client-side AES-256 encryption
- Strong randomly generated password with strict permissions (600)
- Repository folder protected with 700 permissions
- Exclusion lists for temporary/cache files
- 100% local solution (no external connections)
- Manual execution only (full user control)

---

## How to Use This Project

```bash
cd ~/secure-backup-and-disaster-recovery-platform

# 1. Run a backup
./scripts/backup-daily.sh

# 2. Check backup health
./scripts/health-check.sh

# 3. Generate professional HTML report
python3 scripts/generate-report.py

# 4. Review restore procedure
./scripts/restore-test.sh

Skills Demonstrated – AIS RNCP Alignment

Secure Linux system administration and hardening
Design and implementation of backup strategies
Data encryption and protection
Risk analysis and mitigation
Business continuity and disaster recovery planning
Professional technical documentation


Conclusion and Professional Reflection
This project allowed me to bridge the gap between theoretical learning and practical infrastructure skills. It proves my ability to learn quickly, design secure solutions, and deliver professional work.
I am actively looking for an alternance in the Paris region starting September/October 2026.


