FROM rabbitmq:3.9.4-management

# Enable additional plugins
RUN rabbitmq-plugins enable --offline rabbitmq_shovel rabbitmq_shovel_management

# Expose the custom port for the new plugin
EXPOSE 5673
