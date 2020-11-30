FROM alpine:latest

# add nmap
RUN apk add nmap --no-cache

# Set entrypoint
ENTRYPOINT ["/bin/sh"]
