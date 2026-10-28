#!/bin/bash
set -euo pipefail
name="$1"
log() {
	echo "$(date '+%F %T') $1"
}
if
	systemctl is-active --quiet "$name"; then
	log "$name ОК"
	exit 0
else
	log "$name DOWN"
	exit 1
fi
