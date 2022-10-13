#!/bin/sh -l
cd $GITHUB_WORKSPACE

echo 'pull_request_description<<EOF' >> $GITHUB_OUTPUT
echo "$(generate-pull-request-description PULL_REQUEST_START --pull-request-url="$1" --api-token="$2" --header="$3" --list-item-symbol="$4")" >> $GITHUB_OUTPUT
echo EOF >> $GITHUB_OUTPUT
