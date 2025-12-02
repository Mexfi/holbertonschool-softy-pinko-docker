# 1. Base Image: Use the latest Ubuntu image as the foundation.
FROM ubuntu:latest

# 2. Update and Upgrade Packages:
# The `&&` operator chains the commands, and the `rm -rf /var/lib/apt/lists/*` cleans up 
# cached package lists to reduce the final image size.
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# 3. Entrypoint Command:
# The CMD instruction defines the command that will be executed when a container is 
# started from this image.
# We use the exec form (array of strings) which is the preferred way.
CMD ["/bin/echo", "Hello, World!"]
