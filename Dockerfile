# Use the official Nginx image as the base image
FROM nginx:alpine

# Copy the React build artifacts into the Nginx web server root
COPY  ./build /usr/share/nginx/html

# Expose the port Nginx is listening on
EXPOSE 80

# Command to start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]

