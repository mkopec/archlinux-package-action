# Base image
FROM docker.io/library/archlinux:base-devel

# Install dependencies
RUN pacman -Syu --needed --noconfirm pacman-contrib namcap git

# Copy files
COPY LICENSE README.md /
COPY entrypoint.sh /entrypoint.sh

# Set entrypoint
ENTRYPOINT ["/entrypoint.sh"]
