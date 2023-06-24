FROM ubuntu:22.04

RUN apt update && DEBIAN_FRONTEND=noninteractive apt -y install \
  bash-completion \
  build-essential \
  curl \
  dbus-x11 \
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
  ubuntu-gnome-desktop \
  vim \
  xrdp \
  && apt clean && rm -rf /var/lib/apt/lists/*


# sshd
RUN mkdir -p /var/run/sshd \
  && echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config \
  && echo 'PasswordAuthentication yes' >> /etc/ssh/sshd_config \
  && echo root:mypassword | chpasswd


# xrdp
RUN mkdir -p /var/run/dbus \
  && adduser xrdp ssl-cert \
  && sed -i -E 's/^rdpdr=true/rdpdr=false/g' /etc/xrdp/xrdp.ini  # optional \
  && sed -i -E 's/^cliprdr=true/cliprdr=false/g' /etc/xrdp/xrdp.ini  # optional


# supervisor
COPY bin/* /usr/local/bin/
COPY pkg/* /usr/local/share/
RUN chmod +x /usr/local/bin/*
COPY supervisor/* /etc/supervisor/conf.d/
ENTRYPOINT ["entrypoint.bash"]
