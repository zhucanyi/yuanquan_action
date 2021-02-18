#!/bin/sh

set -eux

CITY=Shanghai
LANGUAGE="zh-CN"
openKey="eyJhcHBUeXBlIjoiQU5EUk9JRCIsImRldmljZU5hbWUiOiJYaWFvbWkgTTIwMTFLMkMiLCJlbmNvZGVUeXBlIjoiMCIsImxvZ2luVGltZSI6IjE2MTIzMzExNjc0NTciLCJuZXR3b3JrVHlwZSI6IldJRkkiLCJvcGVuSWQiOiIwYzgyOGVmNS02ZDJjLTQ4MGYtYjQ1NS1jZTBjYmQ4NTg3ZGYiLCJwYXJrc2NvZGUiOiJuciIsInBhc3N3b3JkIjoiNWIxMDdhMDBlNWMxMWVmNmY1ZTE4YTE4YjQ4NmNiYzJiOGJiZWVmYSIsInVzZXJuYW1lIjoiMTM3MTE2ODc5OTUiLCJ2ZXJzaW9uIjoiNS42LjAifQ=="
UA="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36"

curl \
  -H "Accept-Language: $LANGUAGE" \
  -H "User-Agent: $UA" \
  -o result.html \
  https://app.feparks.com/mobilev2/integral/signIntegral?openKey=$openKey

curl \
  -H "Accept-Language: $LANGUAGE" \
  -H "User-Agent: $UA" \
  -o result.html \
  https://app.feparks.com/mobilev2/integral/shareGetIntegral?openKey=$openKey&type=9
