#!/bin/sh

if [ -z ${LANG} ]
then
	export LANG=en_US.UTF-8
fi

set -e
set -u

WORK_DIR=$(dirname $(realpath ${0}))

export PATH=${WORK_DIR}/games/cataclysm-dda-0.D/bin:${PATH}
export GUIX_LOCPATH=${WORK_DIR}/games/cataclysm-dda-0.D/lib/locale


set +u

${SHELL} || bash
