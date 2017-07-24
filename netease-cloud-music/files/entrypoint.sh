#!/bin/bash
set -ex

export USERNAME=music
export HOME=/home/$USERNAME
export USER_ID=$(id -u)
export GROUP_ID=$(id -g)

cp -f /etc/passwd /tmp/passwd.template
echo '${USERNAME}:x:${USER_ID}:${GROUP_ID}::${HOME}:/bin/bash' >> /tmp/passwd.template

envsubst < /tmp/passwd.template > /tmp/passwd
export LD_PRELOAD=/usr/lib/libnss_wrapper.so
export NSS_WRAPPER_PASSWD=/tmp/passwd
export NSS_WRAPPER_GROUP=/etc/group

umask 0002
exec "$@"
