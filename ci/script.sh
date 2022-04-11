#!/bin/bash

# Set TAG_NAME locally an in github env
TAG_NAME=$(git rev-parse HEAD)
echo "TAG_NAME=$TAG_NAME" >> $GITHUB_ENV

if []
set -ex

if [ -n "$TRAVIS_TAG" ]; then 
	mkdir -p /tmp/packages

	(cd linux && tar -cvzf /tmp/packages/bin-linux.tar.gz *)
	(cd mac && tar -cvzf /tmp/packages/bin-mac.tar.gz *)

	(cd win32 && zip -r /tmp/packages/bin-win32.zip *)
	(cd win64 && zip -r /tmp/packages/bin-win64.zip *)
else
	# Make sure pull requests don't trigger this. Should be disabled from the
	# dashboard but lets make sure that this doesn't happen
	if [ "$TRAVIS_PULL_REQUEST" != "false" ]; then exit 1; fi

	# Only tags create the packages, normal pushes just create the tags
	git remote add deploy "git@github.com:scp-fs2open/scp-prebuilt.git"
	git tag -a "bin-$TRAVIS_COMMIT" -m "Automated prebuilt binary tag"
	git push deploy --tags
fi
