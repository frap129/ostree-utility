#!/bin/bash
set -euo pipefail

export OSTREE_SYS_ROOT_LABEL=${OSTREE_SYS_ROOT_LABEL:="fedora_fedora"}
export OSTREE_SYS_KARG=${OSTREE_SYS_KARG:="rootflags=subvol=root"}
export SYSTEM_OPT_TIMEZONE=${SYSTEM_OPT_TIMEZONE:="America/New_York"}
export PODMAN_OPT_BUILDFILE=${PODMAN_OPT_BUILDFILE:="$(dirname ${0})/trellis/Containerfile.base:ostree/base,$(dirname ${0})/Containerfile.host.trellis:ostree/host"}

./ostree.sh -b trellis $@
