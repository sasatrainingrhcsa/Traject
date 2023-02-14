FROM ubuntu
# Install Nginx
RUN apt-get -y update && apt-get -y install nginx
# Copy the Nginx config
COPY nginx.conf /etc/nginx/nginx.conf
# Expose the port for access
EXPOSE 80/tcp
# Run the Nginx server
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
