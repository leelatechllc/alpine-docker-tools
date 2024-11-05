FROM alpine:latest
RUN apk --no-cache add unbound openrc && \
    wget -S https://www.internic.net/domain/named.cache -O /etc/unbound/root.hints
COPY config-files/unbound.conf /etc/unbound/unbound.conf
RUN mkdir /run/openrc && touch /run/openrc/softlevel

# Execute unbound serving on 0.0.0.0
CMD ["unbound", "-d"]

