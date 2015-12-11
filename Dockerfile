FROM elasticsearch:1.7

# Allow memory lock
RUN echo "\n* hard    memlock unlimited\n*    soft    memlock unlimited\n" >> /etc/security/limits.conf

# Install gui plugin
RUN plugin --install mobz/elasticsearch-head

