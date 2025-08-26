# Use the official n8n image as the base for our custom image
FROM n8nio/n8n:latest

# Switch to the root user temporarily to install system packages
USER root

# Use the 'apk' package manager (from Alpine Linux) to install ffmpeg
# --no-cache keeps the image size smaller
RUN apk add --no-cache ffmpeg nano

# Switch back to the default non-root 'node' user for security
USER node
