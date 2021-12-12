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
  --ro-bind "$HOME/.config/proxychains" "/home/de0013bian/.proxychains" \
  --ro-bind "$HOME/.zshrc" "/home/de0013bian/.zshrc" \
  --ro-bind "$HOME/.curlrc" "/home/de0013bian/.curlrc" \
  --ro-bind "$HOME/.tmux.conf" "/home/de0013bian/.tmux.conf" \
  --ro-bind "$HOME/.whitebox/machine-id" "/etc/machine-id" \
  --proc "/proc" \
  --dev "/dev" \
  --tmpfs "/tmp" \
  --tmpfs "/run" \
  --unsetenv "DBUS_SESSION_BUS_ADDRESS" \
  --setenv "HOME" "/home/de0013bian" \
  --setenv "USER" "/home/de0013bian" \
  --setenv "LOGNAME" "/home/de0013bian" \
  --bind "$HOME/check" "/home/de0013bian/build" \
  --bind "$HOME/.whitebox/.config/nvim" "/home/de0013bian/.config/nvim" \
  --bind "$HOME/.whitebox/.config/yarn" "/home/de0013bian/.config/yarn" \
  --bind "$HOME/.whitebox/.local" "/home/de0013bian/.local" \
  --hostname "pou03205488" \
     --unshare-user \
     --unshare-pid \
     --unshare-uts \
     --unshare-cgroup \
/bin/sh) \
11< <(getent passwd $UID 65534) \
12< <(getent group $(id -g) 65534) \

