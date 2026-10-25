#!/bin/bash
set -euo pipefail
log() {
	echo "[$(date +%T)] $1"
}

NAME="${1:-nginx}"
systemctl is-active "$NAME" > /dev/null 2>&1 && log "сервіс $NAME працює" || log "сервіс $NAME не працює"

