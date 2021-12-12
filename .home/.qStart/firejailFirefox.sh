#!/bin/bash
#______________________________________________________________________________
#                                                                   sway-wayland
# MOZ_ENABLE_WAYLAND=1

#______________________________________________________________________________
#                                                                           ibus
export GTK_IM_MODULE=xim
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=xim

# uid='webT'
# tmpdir=/tmp/${uid}
# mkdir -p ${tmpdir}
# /usr/bin/firejail --private-tmp \
#                   --private=${tmpdir} \
#                   /usr/bin/firefox $@

# firejail --dns=8.8.8.8 --x11=xorg firefox
# firejail --seccomp --nonewprivs --private-tmp firefox --private-window
firejail --seccomp --nonewprivs --private-tmp --dns=8.8.8.8 --apparmor firefox
