#!/bin/bash
set -eou pipefail
name="$1"
log() {
	echo "$(date '+%F %T') $1"
}
if systemctl is-active --quiet "$name"; then
log "$name ОК"
else
log "$name DOWN"
exit 1
fi
