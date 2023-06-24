FROM ubuntu:22.04

ENV LANG="ja_JP.UTF-8" \
  LANGUAGE="ja_JP:ja" \
  TZ="JST-9"

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
  wget \
  xfce4 \
  xfce4-goodies \
  xrdp \
  && apt clean && rm -rf /var/lib/apt/lists/*


# sshd
RUN mkdir -p /var/run/sshd \
  && echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config \
  && echo 'PasswordAuthentication yes' >> /etc/ssh/sshd_config \
  && echo root:mypassword | chpasswd


# xrdp


# supervisor
COPY supervisor/* /etc/supervisor/conf.d/
COPY bin/* /usr/local/bin/
RUN chmod +x /usr/local/bin/*
ENTRYPOINT ["entrypoint.bash"]
