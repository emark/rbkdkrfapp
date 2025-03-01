FROM bitnami/php-fpm:latest

RUN install_packages apache2 \
&& install_packages libapache2-mod-php8.2 \
&& install_packages php-mysql \
&& install_packages php-gd \
&& install_packages vim

RUN mkdir -p /speedtest/

COPY speedtest/backend/ /speedtest/backend
COPY speedtest/results/*.php /speedtest/results/
COPY speedtest/results/*.ttf /speedtest/results/
COPY speedtest/*.js /speedtest/
COPY speedtest/favicon.ico /speedtest/
COPY speedtest/docker/*.php /speedtest/
COPY speedtest/docker/entrypoint.sh /

STOPSIGNAL SIGWINCH

EXPOSE ${WEBPORT}
CMD ["bash","/entrypoint.sh"]
