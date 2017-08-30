FROM openresty/openresty:1.11.2.5-centos
WORKDIR /or-sapi
COPY . /or-sapi
ENV TZ="Asia/Shanghai"
ENTRYPOINT ["/usr/local/openresty/bin/openresty", "-p", "/or-sapi", "-g", "daemon off;"]
