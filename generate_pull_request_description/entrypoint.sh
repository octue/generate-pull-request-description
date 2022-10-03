#!/bin/sh -l
cd $GITHUB_WORKSPACE

echo 'RELEASE_NOTES<<EOF' >> $GITHUB_ENV
echo "$(compile-release-notes PULL_REQUEST_START --pull-request-url="$1" --api-token="$2" --header="$3" --list-item-symbol="$4")" >> $GITHUB_ENV
echo EOF >> $GITHUB_ENV
