# Container image that runs your code
FROM ghcr.io/lorislab/samo:3.1.0

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh
