#!/usr/bin/env bash

set -euo pipefail
(exec bwrap \
      --ro-bind /usr /usr \
      --dir /tmp \
      --dir /var \
      --symlink ../tmp var/tmp \
      --proc /proc \
      --dev /dev \
      --ro-bind /etc/resolv.conf /etc/resolv.conf \
      --symlink usr/lib /lib \
      --symlink usr/lib64 /lib64 \
      --symlink usr/bin /bin \
      --symlink usr/sbin /sbin \
      --ro-bind /usr/bin /usr/bin \
      --ro-bind "$HOME/.bwrap/.nobashBox/machine-id" "/etc/machine-id" \
      --bind "$HOME/.bwrap/.nobashBox/.curlrc" "/home/T6HL/.curlrc" \
      --bind "$HOME/.bwrap/.nobashBox/.tmux.conf" "/home/T6HL/.tmux.conf" \
      --bind "$HOME/.bwrap/.nobashBox/.config/nvim" "/home/T6HL/.config/nvim" \
      --bind "$HOME/.bwrap/.nobashBox/.config/yarn" "/home/T6HL/.config/yarn" \
      --bind "$HOME/.bwrap/.nobashBox/.local" "/home/T6HL/.local" \
      --chdir / \
      --unshare-all \
      --share-net \
      --die-with-parent \
      --dir /run/user/$(id -u) \
      --hostname wer990 \
      --setenv HOME /home/T6HL \
      --setenv XDG_RUNTIME_DIR "/run/user/`id -u`" \
      --setenv PS1 "noHash$ " \
      --file 11 /etc/passwd \
      --file 12 /etc/group \
  /bin/sh) \
    11< <(getent passwd $UID 65534) \
    12< <(getent group $(id -g) 65534) \
