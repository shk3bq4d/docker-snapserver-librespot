#!/bin/bash
set -euo pipefail

# start avahi's dependency
#service dbus start

# start avahi
#service avahi-daemon start

# and finally launch snapserver with the updated config...
set -x
ls -l /usr/local/bin/librespot
sed -r -i -e "s/1780/$HTTP_PORT/" /usr/share/snapserver/snapweb/snapcontrol.js
exec snapserver -c /config/snapserver-${INSTANCE}.conf
