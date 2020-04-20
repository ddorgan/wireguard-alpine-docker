### Introduction

This is a small alpine linux image (12MB!) with the wireguard-tools and iptables packages preinstalled.

This is based on https://github.com/felixfischer/wireguard-docker.git, however there are three major changes:

1. Do not depend on upstream image jessfraz/wireguard
2. Do not take wg-quick command from curl command
3. Ues standard port of 51820

Instead it uses the base alpine image and adds these packages via `apk`

### Building & Uploading

Assuming you will upload to dockerhub are already logged in run the commands:

```docker build -t username/image_name:version .```
```docker push username/image_name:version```

### Usage

This can be used within a kubernetes cluster with a ConfigMap or locally using a mounted file for `/etc/wireguard/wg0/conf`
