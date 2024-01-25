FROM httpd:2.4

RUN rm -f  /var/www/html/index.html
RUN rm -f  /usr/local/apache2/htdocs/index.html
# Copy your website files to the correct location
COPY . /usr/local/apache2/htdocs/

# Remove the default index.html (optional, modify if needed)


# Expose port 80 for HTTP traffic
EXPOSE 80

