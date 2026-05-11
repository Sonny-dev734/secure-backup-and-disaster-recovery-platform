#!/bin/bash
# Health Check and Maintenance Script

CONFIG_DIR="$(dirname "$0")/../config"
LOG_DIR="$(dirname "$0")/../logs"

source "${CONFIG_DIR}/restic.env"
LOG_FILE="${LOG_DIR}/health-check_$(date +%Y-%m-%d).log"

log() {
    echo "[$(date '+%H:%M:%S')] $1" | tee -a "$LOG_FILE"
}

mkdir -p "$LOG_DIR"
log "=== Running Backup Health Check ==="

# Basic repository check
restic check --repo "$RESTIC_REPOSITORY" --password-file "$RESTIC_PASSWORD_FILE" --read-data-subset 5% >> "$LOG_FILE" 2>&1

# List recent snapshots
restic snapshots --repo "$RESTIC_REPOSITORY" --password-file "$RESTIC_PASSWORD_FILE" --last 5 >> "$LOG_FILE" 2>&1

log "✅ Health check completed"
