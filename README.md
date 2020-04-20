#### Introduction

This is a small alpine linux image with the wireguard-tools and iptables packages preinstalled. The configuration is expected to come from a kubernetes ConfigMap.

This is based on https://github.com/felixfischer/wireguard-docker.git, however there are two major changes:

1. Do not depend on upstream image jessfraz/wireguard
2. Do not take wg-quick command from curl command

Instead it uses the base alpine image and adds these packages via `apk`

