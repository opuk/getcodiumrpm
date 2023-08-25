#!/bin/bash -x
wget $(curl -s https://api.github.com/repos/VSCodium/vscodium/releases | jq '.[0].assets' | grep 'x86_64.rpm' | grep browser_download_url | head -1 | awk '{ print $2 }' | sed s/\"//g)
