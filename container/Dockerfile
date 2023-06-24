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
  && apt -y remove gnome-initial-setup \
  && sed -i -E 's/^rdpdr=true/rdpdr=false/g' /etc/xrdp/xrdp.ini \
  && sed -i -E 's/^cliprdr=true/cliprdr=false/g' /etc/xrdp/xrdp.ini

COPY xrdp/*.sh /etc/xrdp/
RUN chmod +x /etc/xrdp/*.sh

COPY pkg/google-chrome-stable_current_amd64.deb /usr/local/share/
RUN dpkg -i /usr/local/share/google-chrome-stable_current_amd64.deb


# supervisor
COPY bin/* /usr/local/bin/
RUN chmod +x /usr/local/bin/*
COPY supervisor/* /etc/supervisor/conf.d/
ENTRYPOINT ["entrypoint.bash"]
