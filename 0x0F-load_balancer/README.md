0x0F. Load balancer
# Load Balancer and Custom HTTP Response Header Documentation

This documentation provides an overview and detailed explanation of three scripts designed to configure a web server environment with a load balancer and custom HTTP response headers. These scripts are part of a larger infrastructure setup aimed at improving web server performance and debugging capabilities.

## Overview

The setup involves three main components:

1. **Custom HTTP Response Header Configuration**: A Bash script that installs and configures Nginx on an Ubuntu server, adding a custom HTTP response header for identifying the server.

2. **Load Balancer Installation**: A Bash script for installing and configuring HAProxy as a load balancer to distribute traffic between web servers.

3. **Puppet Configuration for Custom HTTP Response Header**: An advanced task script using Puppet to automate the configuration of a custom HTTP response header on Nginx.

### 1. Custom HTTP Response Header Configuration (`0-CUSTOM_HTTP_RESPONSE_HEADER`)

This script performs the following tasks:

- **Nginx Installation**: Installs Nginx on the Ubuntu server.
- **Custom Response Header**: Adds a custom HTTP response header (`X-Served-By`) to the Nginx configuration to identify the server by its hostname.
- **Index Page Creation**: Creates a simple `index.html` page with "Hello World!" content.
- **Redirection Configuration**: Adds a redirection rule to the Nginx configuration, redirecting requests from `/redirect_me` to a YouTube video.
- **Custom 404 Page**: Configures a custom 404 error page with a predefined message.

### 2. Load Balancer Installation (`1-INSTALL_LOAD_BALANCER`)

This script sets up HAProxy on an Ubuntu server to act as a load balancer with the following configuration:

- **HAProxy Installation**: Installs a specific version of HAProxy.
- **Frontend Configuration**: Configures the frontend to listen on port 80 and sets the backend to distribute incoming requests.
- **Backend Configuration**: Sets up a round-robin load balancing mechanism between two web servers with predefined IP addresses.

### 3. Puppet Configuration for Custom HTTP Response Header (`2-PUPPET_CUSTOM_HTTP_RESPONSE_HEADER.PP`)

This advanced script uses Puppet to automate the configuration of the custom HTTP response header on Nginx. It performs the following actions:

- **Nginx Installation**: Ensures Nginx is installed on the server.
- **Custom Header Addition**: Adds the `X-Served-By` header with the server's hostname to the Nginx configuration.
- **Nginx Restart**: Restarts the Nginx service to apply the changes.

## Conclusion

These scripts are designed to streamline the setup of a web server environment with enhanced debugging capabilities through custom HTTP response headers and improved performance and reliability via load balancing. The use of Puppet in the advanced task demonstrates an approach to automating server configuration, promoting efficiency and consistency across server setups.