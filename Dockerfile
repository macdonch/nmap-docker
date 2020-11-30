FROM alpine:latest

# update available packages
RUN apk add nmap --no-cache

# Set entrypoint
COPY entrypoint.sh /usr/local/bin/
ENTRYPOINT ["/sbin/tini", "--", "/usr/local/bin/entrypoint.sh"]
