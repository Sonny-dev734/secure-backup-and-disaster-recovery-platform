#!/bin/bash
# =====================================================
# Secure Daily Backup Script - Restic
# Project: Secure Backup & Disaster Recovery Platform
# Author: Sonny - AIS RNCP Preparation
# =====================================================

set -o errexit
set -o nounset
set -o pipefail

# ===================== CONFIG =====================
CONFIG_DIR="$(dirname "$0")/../config"
LOG_DIR="$(dirname "$0")/../logs"
REPORT_DIR="$(dirname "$0")/../reports"

BACKUP_DATE=$(date +"%Y-%m-%d_%H-%M")
LOG_FILE="${LOG_DIR}/backup_${BACKUP_DATE}.log"

# Load configuration
source "${CONFIG_DIR}/restic.env"

# ===================== FUNCTIONS =====================
log() {
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1" | tee -a "$LOG_FILE"
}

# ===================== MAIN =====================
log "=== Starting Secure Backup Process ==="

# Create logs and reports directories if they don't exist
mkdir -p "$LOG_DIR" "$REPORT_DIR"

# Initialize repository if it doesn't exist
if [ ! -d "$RESTIC_REPOSITORY" ] || [ -z "$(ls -A $RESTIC_REPOSITORY 2>/dev/null)" ]; then
    log "Repository not found. Initializing new repository..."
    restic init --repo "$RESTIC_REPOSITORY" --password-file "$RESTIC_PASSWORD_FILE"
    log "✅ Repository initialized successfully."
fi

# Run the backup
log "Starting backup of configured paths..."

restic backup \
    --repo "$RESTIC_REPOSITORY" \
    --password-file "$RESTIC_PASSWORD_FILE" \
    --files-from "${CONFIG_DIR}/backup-paths.conf" \
    --exclude-file "${CONFIG_DIR}/exclude.txt" \
    --tag daily \
    --one-file-system \
    --verbose >> "$LOG_FILE" 2>&1

if [ $? -eq 0 ]; then
    log "✅ Backup completed successfully!"
else
    log "❌ Backup failed! Check log file."
    exit 1
fi

# Run health check
"$(dirname "$0")/health-check.sh"

log "=== Backup Process Finished Successfully ==="
