FROM ubuntu:18.04

RUN apt-get update && \
    apt-get --no-install-recommends --yes install \
         git \
         build-essential \
         libtool \
         autotools-dev \
         automake \
         pkg-config\ 
         libssl-dev \
         libevent-dev \
         bsdmainutils \
         python3 \
         libboost-system-dev \
         libboost-filesystem-dev \
         libboost-chrono-dev \
         libboost-test-dev \
         libboost-thread-dev \
         libboost-all-dev \
         libboost-program-options-dev \
         vim \
         software-properties-common && \
         rm -rf /var/lib/apt/lists/* && apt-get clean

RUN add-apt-repository ppa:bitcoin/bitcoin && \
    apt-get update && \
    apt-get --no-install-recommends --yes install \
          libdb4.8-dev \
          libdb4.8++-dev \
          libminiupnpc-dev \
          libzmq3-dev \
          libprotobuf-dev \
          protobuf-compiler \
          software-properties-common && \
          rm -rf /var/lib/apt/lists/* && apt-get clean
