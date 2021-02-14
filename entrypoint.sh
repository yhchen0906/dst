#! /bin/sh

entrypoint-steamcmd.sh

"${STEAMROOT}/steamcmd.sh" \
  +login anonymous \
  +force_install_dir "${DSTROOT}" \
  +app_update 343050 validate \
  +quit

exec "$@"