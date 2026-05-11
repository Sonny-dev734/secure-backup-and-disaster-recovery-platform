# 03 - Disaster Recovery Plan

## Scenario 1: Laptop failure / theft
1. Take new machine
2. Install Linux Mint
3. Install Restic (`sudo apt install restic`)
4. Copy password file securely
5. Run restore command (see restore-test.sh)

## Scenario 2: Accidental deletion
1. List snapshots: `restic snapshots`
2. Restore specific folder: `restic restore <snapshot-id> --target /path`

