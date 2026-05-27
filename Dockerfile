FROM dhi.io/golang:1.26.3-debian13-dev@sha256:5e7258a7d729ddf2881591b25cdeeb608fde3c8581a1b693bfe3e317f054f732

RUN apt-get update && apt-get install -y --no-install-recommends clang-format && \
    rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /cmd/check-formatting.sh
RUN chmod 555 /cmd/check-formatting.sh

ENV HOME=/tmp
USER 65532

ENTRYPOINT [ "/cmd/check-formatting.sh" ]
