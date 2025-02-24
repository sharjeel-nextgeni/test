# Use the official NGINX image from Docker Hub
FROM nginx:latest

# Copy custom NGINX configuration if needed (optional)
# COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80 to the outside world
EXPOSE 80

# Start NGINX when the container launches
CMD ["nginx", "-g", "daemon off;"]
