# Use the official NGINX image from Docker Hub
FROM nginx:latest

# Generate a random file at build time
RUN echo "Random Content: $(date +%s%N | sha256sum | head -c 32)" > /usr/share/nginx/html/random.txt

# Expose port 80 to the outside world
EXPOSE 80

# Start NGINX when the container launches
CMD ["nginx", "-g", "daemon off;"]
