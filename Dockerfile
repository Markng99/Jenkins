FROM wordpress:latest

# Set environment variables
ENV WORDPRESS_DB_HOST=db
ENV WORDPRESS_DB_USER=wordpress
ENV WORDPRESS_DB_PASSWORD=wordpress_password
ENV WORDPRESS_DB_NAME=wordpress

# Expose the port the app runs on
EXPOSE 80

# Copy custom configuration files if needed
# COPY ./src/wp-config.php /var/www/html/wp-config.php

# Start the WordPress application
CMD ["apache2-foreground"]