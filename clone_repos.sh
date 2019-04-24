#!/bin/bash 

for i in {1..8}
do
    curl GET -u $GITHUB_USER:$GITHUB_PASSWORD -H "X-GitHub-OTP:<TF_TOKEN>" https://api.github.com/orgs/:org/repos?page=$i > repos$i
done

cat repos* | jq '.[].ssh_url' | sed -r 's/["]+//g' | sort > repository

while IFS='' read -r line || [[ -n "$line" ]]; do
    git clone $line
done < repository

rm repos*