FROM bitnami/php-fpm:latest

RUN install_packages apache2 \
&& install_packages default-mysql-server \
&& install_packages libapache2-mod-php8.2 \
&& install_packages php-mysql \
&& install_packages php-gd \
&& install_packages vim

RUN mkdir -p /speedtest/
RUN mkdir -p /mysql-data
RUN chown -R mysql:mysql /mysql-data
COPY my.cnf /etc/mysql

COPY speedtest/backend/ /speedtest/backend
COPY speedtest/results/*.php /speedtest/results/
COPY speedtest/results/*.ttf /speedtest/results/
COPY speedtest/*.js /speedtest/
COPY speedtest/favicon.ico /speedtest/
COPY servers.json /servers.json
COPY speedtest/docker/*.php /speedtest/
COPY speedtest/docker/entrypoint.sh /

# Prepare default environment variables
ENV TITLE=LibreSpeed
ENV MODE=frontend
ENV TELEMETRY=true
ENV ENABLE_ID_OBFUSCATION=true
ENV REDACT_IP_ADDRESSES=false
ENV WEBPORT=8080

#Remove before make compose 
ENV DB_TYPE=mysql
ENV DB_USERNAME=user
ENV DB_PASSWORD=pass
ENV DB_HOSTNAME=localhost
ENV DB_NAME=speedtest_telemetry

STOPSIGNAL SIGWINCH

EXPOSE ${WEBPORT}
CMD ["bash","/entrypoint.sh"]
