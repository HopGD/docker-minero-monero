# ---------- BUILD ----------
FROM alpine:3.19 AS builder

RUN apk add --no-cache \
    git \
    build-base \
    cmake \
    libuv-dev \
    openssl-dev \
    hwloc-dev

WORKDIR /xmrig

RUN git clone https://github.com/xmrig/xmrig.git . \
    && mkdir build \
    && cd build \
    && cmake .. \
    && make -j$(nproc)

# ---------- RUNTIME ----------
FROM alpine:3.19

RUN apk add --no-cache \
    libstdc++ \
    libuv \
    openssl \
    hwloc

COPY --from=builder /xmrig/build/xmrig /usr/local/bin/xmrig

ENTRYPOINT ["xmrig"]
