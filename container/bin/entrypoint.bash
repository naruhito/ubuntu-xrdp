#!/bin/bash
set -eu
set -o pipefail

function main() {
  set-skel-files
  add-sample-user
  run-supervisor
}

function add-sample-user() {
  if id ubuntu; then
    return 0
  fi
  useradd -m ubuntu -p $(openssl passwd ubuntu)
  usermod -s /bin/bash ubuntu
  usermod -aG sudo ubuntu
}

function set-skel-files() {
  echo 'source ubuntu-xrdp_env.bash' >> /etc/skel/.bashrc
  cat <<EOF > /etc/skel/.xsessionrc
export GNOME_SHELL_SESSION_MODE=ubuntu
export XDG_SESSION_TYPE=x11
export XDG_CURRENT_DESKTOP=ubuntu:GNOME
export XDG_CONFIG_DIRS=/etc/xdg/xdg-ubuntu:/etc/xdg
export XDG_DATA_DIRS=/usr/share/ubuntu:/usr/local/share:/usr/share:/var/lib/snapd/desktop
EOF
  cp /etc/skel/.bashrc /root/
  cp /etc/skel/.xsessionrc /root/
}

function run-supervisor() {
  rm -f /var/run/reboot-required*
  source ubuntu-xrdp_env.bash
  /usr/bin/supervisord -c /etc/supervisor/supervisord.conf -n
}

main
