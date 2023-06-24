FROM ubuntu:22.04

RUN apt update && DEBIAN_FRONTEND=noninteractive apt -y install \
  supervisor\ 
  && apt clean && rm -rf /var/lib/apt/lists/*

COPY supervisor/* /etc/supervisor/conf.d/
COPY bin/* /usr/local/bin/
RUN chmod +x /usr/local/bin/*

ENTRYPOINT ["entrypoint.bash"]
