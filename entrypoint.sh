#!/bin/sh
set -ex

cd "${INPUT_WORKINGDIR:-.}"

if [[ ! -f "$INPUT_TEMPLATEFILE" ]]; then
    echo "${INPUT_TEMPLATEFILE} does not exit in the working directory (${INPUT_WORKINGDIR})"
    exit 1
fi

BUILD_OUTPUT=$(sh -c "PACKER_LOG=1 packer build ${INPUT_TEMPLATEFILE}" 2>&1)
BUILD_SUCCESS=$?
echo "$BUILD_OUTPUT"

exit $BUILD_SUCCESS
