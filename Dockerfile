# Use the official RabbitMQ image as the base
FROM rabbitmq:3.9.4-management

# Enable additional plugins
RUN rabbitmq-plugins enable --offline rabbitmq_shovel rabbitmq_shovel_management

# Expose default ports for RabbitMQ, management plugin, and shovel plugin
EXPOSE 4369 5671 5672 15671 15672 25672 5673

# Set default username and password for the RabbitMQ dashboard
ENV RABBITMQ_DEFAULT_USER=admin
ENV RABBITMQ_DEFAULT_PASS=admin

# Start RabbitMQ server
CMD ["rabbitmq-server"]
