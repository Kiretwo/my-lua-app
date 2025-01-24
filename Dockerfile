FROM openresty/openresty:alpine-fat

# 1. Install lua-resty-template (optional, for templating)
RUN opm get bungle/lua-resty-template

# 2. Copy the entire 'lua' directory into OpenResty.
#    This places your Lua modules in /usr/local/openresty/nginx/lua/
COPY lua /usr/local/openresty/nginx/lua/

# 3. Copy your HTML templates (or static files) into the default HTML directory
COPY my_template.html /usr/local/openresty/nginx/html/

# 4. Copy your custom nginx.conf
COPY nginx.conf /usr/local/openresty/nginx/conf/nginx.conf

# Expose port 80 for the container
EXPOSE 80

# Run OpenResty (Nginx) in the foreground
CMD ["openresty", "-g", "daemon off;"]
