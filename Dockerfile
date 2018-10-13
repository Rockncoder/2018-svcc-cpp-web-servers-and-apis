FROM ubuntu:18.10

RUN apt-get -qq update && apt-get -qq upgrade
WORKDIR /usr/src
RUN apt-get -qq install libboost-all-dev cmake build-essential \
  libtcmalloc-minimal4 libssl-dev openssl git && \
  ln -s /usr/lib/libtcmalloc_minimal.so.4 /usr/lib/libtcmalloc_minimal.so && \
  git clone https://github.com/nlohmann/json.git && \
  git clone https://github.com/nlohmann/fifo_map.git && \
  git clone https://github.com/0xdead4ead/beast_http_server.git && \
  mkdir -p /usr/include/nlohmann/json/single_include && \
  mkdir -p /usr/include/nlohmann/fifo_map && \
  cp -r json/single_include /usr/include/nlohmann/json && \
  cp -r fifo_map/src /usr/include/nlohmann/fifo_map
EXPOSE 8080:80
