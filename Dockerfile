# Use the official HTTPD image as the base
FROM httpd:latest

# Install wget and unzip (using a Debian-based HTTPD image)
RUN apt-get update && \
    apt-get install -y wget unzip

WORKDIR /tmp/test

# Download the zip file from the internet
RUN wget https://www.tooplate.com/zip-templates/2137_barista_cafe.zip && \
    unzip 2137_barista_cafe.zip && \
    mv 2137_barista_cafe/* /usr/local/apache2/htdocs/

# Expose port 80 (default HTTP port)
EXPOSE 80