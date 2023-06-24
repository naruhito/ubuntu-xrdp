FROM ubuntu:22.04

RUN apt update && DEBIAN_FRONTEND=noninteractive apt -y install \
  build-essential \
  curl \
  fonts-noto \
  git \
  ibus-mozc \
  language-pack-ja-base \
  language-pack-ja \
  less \
  nano \
  net-tools \
  openssh-server \
  sudo \
  supervisor\ 
  vim \
  xrdp \
  && apt clean && rm -rf /var/lib/apt/lists/*


# sshd
RUN mkdir -p /var/run/sshd \
  && echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config \
  && echo 'PasswordAuthentication yes' >> /etc/ssh/sshd_config \
  && echo root:mypassword | chpasswd


# xrdp



# supervisor
COPY bin/* /usr/local/bin/
COPY pkg/* /usr/local/share/
RUN chmod +x /usr/local/bin/*
COPY supervisor/* /etc/supervisor/conf.d/
ENTRYPOINT ["entrypoint.bash"]
