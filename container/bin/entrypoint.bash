#!/bin/bash
set -eu
set -o pipefail

source ubuntu-xrdp_env.bash
/usr/bin/supervisord -c /etc/supervisor/supervisord.conf -n
