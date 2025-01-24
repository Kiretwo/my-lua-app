# Dockerfile
FROM openresty/openresty:alpine-fat

# Copy your local nginx.conf to the container
COPY nginx.conf /usr/local/openresty/nginx/conf/nginx.conf

# Expose port 80
EXPOSE 80

# Run OpenResty (Nginx) in the foreground
CMD ["openresty", "-g", "daemon off;"]
