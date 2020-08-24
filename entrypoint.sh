#!/bin/sh
set -e

cd "${INPUT_WORKINGDIR:-.}"

if [[ ! -f "$INPUT_TEMPLATEFILE" ]]; then
    echo "${INPUT_TEMPLATEFILE} does not exit in the working directory (${INPUT_WORKINGDIR})"
    exit 1
fi

set +e
BUILD_OUTPUT=$(sh -c "PACKER_LOG=1 packer build ${INPUT_TEMPLATEFILE}" 2>&1)
BUILD_SUCCESS=$?
echo "$BUILD_OUTPUT"
set -e

exit $BUILD_SUCCESS
