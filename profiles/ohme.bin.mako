abi <abi/3.0>,
include <tunables/global>

profile mako /usr/bin/mako {
  include <abstractions/base>
  include <abstractions/fonts>
  include <abstractions/oho-common-gui>
  network unix stream,

  # Include user overrides for possible symlinked config files
  include if exists <local/mako>

  # Shared memory
  owner /dev/shm/mako* rw,

  # Config file
  owner @{HOME}/.config/mako/** r,

  # Allow mako to view album covers from lollypop music player
  owner @{HOME}/.cache/lollypop/*.jpg r,
}

