FROM alpine:3.17

RUN apk update && apk add git clang-extra-tools
RUN mkdir /cmd
COPY entrypoint.sh /cmd/check-formatting.sh
RUN chmod 555 /cmd/check-formatting.sh
ENTRYPOINT [ "/cmd/check-formatting.sh" ]
