#!/bin/bash
set -eu
set -o pipefail

/usr/bin/supervisord -c /etc/supervisor/supervisord.conf -n
