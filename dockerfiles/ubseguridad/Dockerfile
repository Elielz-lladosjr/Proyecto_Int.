FROM debian:bullseye-slim

RUN apt-get update && apt-get install -y \
    openssh-server \
    sudo \
    curl \
    nano \
    fail2ban \
    && rm -rf /var/lib/apt/lists/*

RUN useradd -m -s /bin/bash eliel \
    && echo "eliel:eliel" | chpasswd \
    && usermod -aG sudo eliel

RUN mkdir /var/run/sshd
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin no/' /etc/ssh/sshd_config

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
