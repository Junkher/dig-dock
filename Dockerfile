FROM alpine:3
 
# ENV http_proxy=http://127.0.0.1:7890
# ENV https_proxy=http://127.0.0.1:7890

WORKDIR /root

RUN apk update && apk add --no-cache proxychains-ng bash curl wget
# RUN wget https://github.com/xmrig/xmrig/releases/download/v6.19.0/xmrig-6.19.0-linux-static-x64.tar.gz
COPY xmrig-6.19.0-linux-static-x64.tar.gz . 
RUN tar xvzf xmrig-6.19.0-linux-static-x64.tar.gz && \
    rm *.tar.gz && \
    mv xmrig-6.19.0 xmrig

WORKDIR /root/xmrig

CMD ["bash"]
# ENTRYPOINT [ "curl", "-s", "http://myip.ipip.net" ]