FROM node:6.9.3
MAINTAINER OpusCapita

# ------------------------
# Azure SSH Server support
# ------------------------

# RUN apt update \
#     && apt install -y --no-install-recommends openssh-server curl \
#     && echo "root:Docker!" | chpasswd
#
# COPY sshd_config /etc/ssh/
#
# COPY init_container.sh /bin/
#
# RUN chmod 755 /bin/init_container.sh

# ------------------------
# App
# ------------------------

RUN mkdir /app
WORKDIR /app

COPY . /app

EXPOSE 3000

CMD ["sh /app/start-demo.sh"]