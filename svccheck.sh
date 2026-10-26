#!/bin/bash
set -euo pipefail
name="${1:-nginx}"
log() {
	echo "[ $(date '+%F %T') ] $1"
}
log "Перевіряю статус"
if systemctl is-active "$name" > /dev/null 2>&1; then
log "OK: $name працює"
exit 0
else
log "FAIL: $name непрацює"
exit 1
fi

