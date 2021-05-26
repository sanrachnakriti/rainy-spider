#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# fetch data from DatoCMS through datocms-pull
npx @stackbit/datocms-pull --ssg gatsby --datocms-access-token $DATOCMS_ACCESS_TOKEN


# build site
npm run build

echo "stackbit-build.sh: finished build"
