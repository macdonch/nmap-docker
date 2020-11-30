FROM alpine:latest

# update available packages
RUN apk add nmap --no-cache

# Set entrypoint
ENTRYPOINT ["nmap"]
