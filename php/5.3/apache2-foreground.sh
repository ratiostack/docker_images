#!/bin/bash
set -e

if [ -n "$WEB_DOCUMENT_ROOT" ]; then
  exec gosu sed -i "s/html/html\/"$WEB_DOCUMENT_ROOT"/" /etc/apache2/sites-available/000-default.conf
fi

# Apache gets grumpy about PID files pre-existing
rm -f /var/run/apache2/apache2.pid

/usr/sbin/apache2ctl -D FOREGROUND