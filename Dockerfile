# Use the official Nginx image as the base image
FROM nginx:alpine

# Copy the index.html file to the Nginx HTML directory
COPY index.html /usr/share/nginx/html/index.html

# Set Heroku-compatible port environment variable
ENV PORT 8080

# Expose port 8080 for Heroku
EXPOSE 8080

# Replace default Nginx configuration to listen on the correct port
RUN echo "server { listen 8080; server_name localhost; location / { root /usr/share/nginx/html; index index.html; } }" \
    > /etc/nginx/conf.d/default.conf

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
