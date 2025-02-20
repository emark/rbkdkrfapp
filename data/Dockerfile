FROM bitnami/php-fpm:latest

RUN install_packages apache2 && install_packages sqlite3 \
&& install_packages libapache2-mod-php8.2 && install_packages php-sqlite3
RUN mkdir -p /speedtest/

COPY speedtest/backend/ /speedtest/backend
COPY speedtest/results/*.php /speedtest/results/
COPY speedtest/results/*.ttf /speedtest/results/
COPY speedtest/*.js /speedtest/
COPY speedtest/favicon.ico /speedtest/
# COPY servers.json /servers.json
COPY speedtest/docker/*.php /speedtest/
COPY speedtest/docker/entrypoint.sh /

# Prepare default environment variables
ENV TITLE=LibreSpeed
ENV MODE=frontend
ENV TELEMETRY=true
ENV ENABLE_ID_OBFUSCATION=true
ENV REDACT_IP_ADDRESSES=false
ENV WEBPORT=8080

STOPSIGNAL SIGWINCH

EXPOSE ${WEBPORT}
CMD ["bash","/entrypoint.sh"]
