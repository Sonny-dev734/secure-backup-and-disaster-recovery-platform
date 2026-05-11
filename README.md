# Secure Backup and Disaster Recovery Platform

**Author**: Sonny  
**Project Type**: Portfolio Project for Titre Professionnel d'Administrateur d’Infrastructures Sécurisées (AIS) – RNCP Level 6  
**Date**: May 2026  
**Environment**: Linux Mint XFCE (4GB RAM workstation)

---

## Executive Summary

This project consists of the complete design, implementation, testing and professional documentation of a secure, local backup and disaster recovery solution using the open-source tool Restic.

Developed during my professional reconversion, this solution demonstrates the technical, methodological and organisational skills expected from an Administrateur d’Infrastructures Sécurisées. It covers secure data management, strong encryption, risk analysis, business continuity planning, disaster recovery procedures, and high-quality technical documentation.

The entire solution runs 100% locally on the machine. No cloud service, no external server and no automation are used. This deliberate choice ensures full control, maximum security during the learning phase, and allows for a deep understanding of every component.

---

## Project Objectives

- Design and implement a reliable and secure backup system
- Apply industry-standard encryption (AES-256 client-side)
- Create clear, structured and professional technical documentation
- Perform risk analysis and define mitigation measures
- Document detailed disaster recovery procedures
- Demonstrate practical application of the CIA triad (Confidentiality, Integrity, Availability)
- Produce a high-quality portfolio project ready for alternance applications and recruiters

---

## Key Concepts Explained

- **Backup**: The process of creating copies of important data to protect against loss.
- **Disaster Recovery (DR)**: The set of policies, tools and procedures that enable the restoration of systems and data after an incident.
- **Restic**: Modern open-source backup software chosen for its built-in AES-256 encryption, deduplication, compression and efficiency.
- **AES-256**: Advanced Encryption Standard with 256-bit keys — one of the strongest encryption algorithms used professionally.
- **3-2-1 Backup Rule**: Best practice recommending 3 copies of data, on 2 different media types, with 1 copy off-site.
- **Snapshot**: Point-in-time copy of the data.

---

## Architecture
+===============================+
|      Linux Workstation        |
|        (Linux Mint XFCE)      |
+===============+===============+
|
| Critical Data
| (Documents, Projects, .ssh...)
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
text---

## Repository Structure
secure-backup-and-disaster-recovery-platform/
├── README.md
├── docs/
├── scripts/
├── config/
├── reports/
├── logs/
└── SecureBackups/restic-repo/
text---

## Security Measures

- Client-side AES-256 encryption
- Strong random password with strict permissions
- Repository folder protected with 700 permissions
- Exclusion lists for temporary files
- 100% local solution

---

## Usage Instructions (Manual Only)

```bash
cd ~/secure-backup-and-disaster-recovery-platform

./scripts/backup-daily.sh
./scripts/health-check.sh
python3 scripts/generate-report.py
./scripts/restore-test.sh

Skills Demonstrated – RNCP AIS Alignment

Secure Linux administration
Backup strategy design
Data encryption
Risk analysis and documentation
Business continuity planning


Conclusion and Professional Reflection
This project allowed me to apply theoretical knowledge from Cisco NetAcad and ANSSI MOOC into a real, functional solution.
It strengthened my understanding of the responsibilities of an Administrateur d’Infrastructures Sécurisées. I am actively looking for an alternance in Paris starting September/October 2026.
Author: Sonny
Reconversion Professionnelle – Cybersecurity & Systems Administration
Date: May 2026
