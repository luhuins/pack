#!/bin/sh

if [ -z ${LANG} ]
then
	export LANG=en_US.UTF-8
fi

set -e
set -u

WORK_DIR=$(dirname $(realpath ${0}))

export PATH=${WORK_DIR}/editor/emacs-with-rime/bin:${PATH}
export GUIX_LOCPATH=${WORK_DIR}/editor/emacs-with-rime/lib/locale

set +u

source ${WORK_DIR}/editor/emacs-with-rime/etc/profile

${SHELL} || bash
