# Copyright 2014 Joukou Ltd
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
FROM quay.io/joukou/base
MAINTAINER Isaac Johnston <isaac.johnston@joukou.com>

ENV DEBIAN_FRONTEND noninteractive

# Add the NGINX public key
ADD nginx-signing-key-public.asc /tmp/nginx-signing-key-public.asc

# Install NGINX
RUN apt-key add /tmp/nginx-signing-key-public.asc && \
    echo "deb http://nginx.org/packages/mainline/ubuntu/ trusty nginx" > /etc/apt/sources.list.d/nginx.list && \
    echo "deb-src http://nginx.org/packages/mainline/ubuntu/ trusty nginx" >> /etc/apt/sources.list.d/nginx.list && \
    apt-get update -qq && \
    apt-get install --no-install-recommends -y nginx && \
    mkdir -pv /etc/nginx/sites-available /etc/nginx/sites-enabled && \
    rm /etc/nginx/conf.d/default.conf /etc/nginx/conf.d/example_ssl.conf && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Add the NGINX config
ADD etc/nginx/nginx.conf /etc/nginx/

# Make NGINX's cache and log directories volumes
VOLUME [ "/var/cache/nginx", "/var/log/nginx" ]

# Expose ports
#   8080  HTTP
#   8443  HTTPS
EXPOSE 8080 8443

ADD bin/boot /bin/
CMD [ "/bin/boot" ]
