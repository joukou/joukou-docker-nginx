NGINX Dockerfile for Joukou
===========================
[![Circle CI](https://circleci.com/gh/joukou/joukou-docker-nginx/tree/develop.png?style=badge&circle-token=5502b995a96e998c18d697a34008f032ffc70513)](https://circleci.com/gh/joukou/joukou-docker-nginx/tree/develop) [![Docker Repository on Quay.io](https://quay.io/repository/joukou/nginx/status?token=9f2ce923-1e9f-45e9-9e4a-a3dde5ba4684 "Docker Repository on Quay.io")](https://quay.io/repository/joukou/nginx) [![Apache 2.0](http://img.shields.io/badge/License-Apache%202.0-brightgreen.svg)](#license) [![Stories in Ready](https://badge.waffle.io/joukou/joukou-docker-nginx.png?label=ready&title=Ready)](http://waffle.io/joukou/joukou-docker-nginx) [![IRC](http://img.shields.io/badge/IRC-%23joukou-blue.svg)](http://webchat.freenode.net/?channels=joukou)

[NGINX](http://nginx.org/) Dockerfile for
[Joukou](https://joukou.com).

## Usage

Used as a base image for other Dockerfiles that are executed via
[Joukou Fleet Units](https://github.com/joukou/joukou-fleet) or
the [Conductor](https://github.com/joukou/joukou-conductor).

## Base Image

See [`quay.io/joukou/base`](https://github.com/joukou/joukou-docker-base).

## Volumes

| Location           | Purpose                               |
| ------------------ | ------------------------------------- |
| `/var/cache/nginx` | NGINX cache                           |
| `/var/log/nginx`   | NGINX logs                            |

## Exposed Ports

| Port      | Purpose                               |
| --------- | ------------------------------------- |
| 8080      | HTTP                                  |
| 8443      | HTTPS                                 |

## Metrics

[![Throughput Graph](https://graphs.waffle.io/joukou/joukou-docker-nginx/throughput.svg)](https://waffle.io/joukou/joukou-docker-nginx/metrics)

## Contributors

[Isaac Johnston](https://github.com/superstructor) ([Joukou Ltd](https://joukou.com))

## License

Copyright &copy; 2014 Joukou Ltd.

NGINX Dockerfile for Joukou is under the Apache 2.0 license. See the
[LICENSE](LICENSE) file for details.
