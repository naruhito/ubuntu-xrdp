#!/bin/sh

. /etc/profile
. ubuntu-xrdp_env.bash

test -x /etc/X11/Xsession && exec /etc/X11/Xsession
exec /bin/sh /etc/X11/Xsession
