#!/usr/bin/env bash

set -euo pipefail
(exec bwrap \
  --ro-bind "/usr/share" "/usr/share" \
  --ro-bind "/usr/lib" "/usr/lib" \
  --ro-bind "/usr/lib64" "/usr/lib64" \
  --tmpfs "/usr/lib/modules" \
  --tmpfs "/usr/lib/systemd" \
  --symlink "/usr/lib" "/lib" \
  --symlink "/usr/lib64" "/lib64" \
  --ro-bind "/usr/bin" "/usr/bin" \
  --symlink "/usr/bin" "/bin" \
  --symlink "/usr/bin" "/sbin" \
  --setenv "/usr/bin" "/usr/bin" \
  --ro-bind "/etc/fonts" "/etc/fonts" \
  --ro-bind "/etc/resolv.conf" "/etc/resolv.conf" \
  --ro-bind "/etc/ssl" "/etc/ssl" \
  --ro-bind "/etc/ca-certificates" "/etc/ca-certificates" \
  --ro-bind "/etc/localtime" "/etc/localtime" \
  --ro-bind "$HOME/.nobashBox/machine-id" "/etc/machine-id" \
  --proc "/proc" \
  --dev "/dev" \
  --tmpfs "/tmp" \
  --tmpfs "/run" \
  --unsetenv "DBUS_SESSION_BUS_ADDRESS" \
  --setenv "HOME" "/home/pus1hing" \
  --setenv "USER" "/home/pus1hing" \
  --setenv "LOGNAME" "/home/pus1hing" \
  --bind "$HOME/check" "/home/pus1hing/build" \
  --bind "$HOME/.nobashBox/.curl" "/home/pus1hing/.curl" \
  --bind "$HOME/.nobashBox/.tmux.conf" "/home/pus1hing/." \
  --bind "$HOME/.nobashBox/.config/nvim" "/home/pus1hing/.config/nvim" \
  --bind "$HOME/.nobashBox/.config/yarn" "/home/pus1hing/.config/yarn" \
  --bind "$HOME/.nobashBox/.local" "/home/pus1hing/.local" \
  --hostname "ut68iiivae188" \
     --unshare-user \
     --unshare-pid \
     --unshare-uts \
     --unshare-cgroup \
/bin/sh) \
11< <(getent passwd $UID 65534) \
12< <(getent group $(id -g) 65534) \

