FROM alpine:latest

# add nmap
RUN apk add nmap --no-cache

#add tini
RUN apk add --no-cache tini

# Set entrypoint
ENTRYPOINT ["/sbin/tini", "--"]
