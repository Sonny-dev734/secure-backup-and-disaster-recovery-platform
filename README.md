# Secure Backup and Disaster Recovery Platform

**Author**: Sonny  
**Project**: Portfolio for Titre Professionnel d'Administrateur d’Infrastructures Sécurisées (AIS) – RNCP Level 6  
**Date**: May 2026  
**Environment**: Linux Mint XFCE (4GB RAM)

---

## Executive Summary

This project implements a complete, secure, local backup and disaster recovery solution using Restic. 

Developed during my professional reconversion, it demonstrates real competencies required for the role of **Administrateur d’Infrastructures Sécurisées**: secure data management, encryption, risk analysis, business continuity planning, and professional documentation.

The solution is 100% local, ethical, manual, and optimized for low-resource machines.

---

## Architecture

Linux Workstation
(Linux Mint XFCE - 4GB RAM)
│
│
Critical Data Folders
(Documents / Projects / .ssh / .config...)
│
▼
Restic Backup Engine
│
│
AES-256 Encryption
(Client-side)
│
▼
Local Encrypted Repository
~/SecureBackups/restic-repo

**3-2-1 Backup Rule Status**: Currently **2/3** (Original data + Encrypted local repository)  
**Next planned step**: Add an external USB drive for full compliance.

---

## Repository Structure

| Folder/File                        | Purpose |
|------------------------------------|---------|
| `README.md`                        | Main project documentation |
| `docs/`                            | Professional documentation (Risk, Policy, DR Plan...) |
| `scripts/backup-daily.sh`          | Main encrypted backup script |
| `scripts/health-check.sh`          | Repository integrity verification |
| `scripts/restore-test.sh`          | Restore procedure guide |
| `scripts/generate-report.py`       | Generates clean HTML reports |
| `config/`                          | Configuration files |
| `reports/`                         | Generated reports |
| `SecureBackups/restic-repo/`       | Encrypted backup repository |

---

## Security Measures

- Client-side AES-256 encryption
- Strong randomly generated password with strict permissions (600)
- Repository folder protected with 700 permissions
- Exclusion lists for temporary and cache files
- 100% local solution (no external connections)
- Manual execution only (full user control)

---

## How to Use This Project

```bash
cd ~/secure-backup-and-disaster-recovery-platform

./scripts/backup-daily.sh              # Run backup
./scripts/health-check.sh              # Check health
python3 scripts/generate-report.py     # Generate HTML report
./scripts/restore-test.sh              # Review restore procedure
Skills Demonstrated – AIS RNCP Alignment

Secure Linux system administration
Backup strategy design and implementation
Data encryption and protection
Risk analysis and mitigation
Business continuity and disaster recovery planning
Professional technical documentation


Conclusion and Professional Reflection
This project allowed me to transform theoretical knowledge into a concrete, functional and well-documented infrastructure solution.
It proves my ability to learn quickly and deliver professional work. I am actively looking for an alternance in the Paris region starting September/October 2026.
Author: Sonny
Reconversion Professionnelle – Cybersecurity & Systems Administration
Availability: September/October 2026 – Paris Region
Date: May 2026
