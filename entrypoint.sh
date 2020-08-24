#!/bin/sh

cd "${WORKINGDIR:-.}"

if [[ ! -f "$TEMPLATEFILE" ]] && [[ $TEMPLATEFILE != *.json ]]; then
    echo "${TEMPLATEFILE} does not exit in the working directory (${WORKINGDIR})"
    exit 1
fi

BUILD_RUN=$(sh -c "packer build ${TEMPLATEFILE}" 2>&1)
BUILD_SUCCESS=$?
echo "$BUILD_RUN"

exit $BUILD_SUCCESS
