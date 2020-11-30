FROM alpine:latest

# add nmap
RUN apk add nmap --no-cache

#add tini
RUN apk add --no-cache tini

# Set entrypoint
COPY entrypoint.sh /usr/local/bin/
ENTRYPOINT ["/sbin/tini", "--", "/usr/local/bin/entrypoint.sh"]
