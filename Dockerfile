# Use an official nginx image as the base image
FROM nginx:alpine

# Install git
RUN apk update && apk add --no-cache git

# Clone the GitHub repository
RUN  index.html /usr/share/nginx/html

# Expose the default HTTP port used by nginx
EXPOSE 80

# Start nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]
