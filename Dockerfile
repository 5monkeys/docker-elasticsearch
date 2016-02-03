FROM java:7-jre

# Install wget
RUN apt-get install -y wget && apt-get clean

# Download and unpack elasticsearch
RUN wget -q https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.0.3.tar.gz -O - | tar zxvf -

# Install GUI
RUN elasticsearch-1.0.3/bin/plugin --install mobz/elasticsearch-head

EXPOSE 9200 9300
CMD ["elasticsearch-1.0.3/bin/elasticsearch"]
