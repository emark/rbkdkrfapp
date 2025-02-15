FROM bitnami/php-fpm:latest


RUN mkdir -p /speedtest/

COPY speedtest/backend/ /speedtest/backend
COPY speedtest/results/*.php /speedtest/results/
COPY speedtest/results/*.ttf /speedtest/results/
COPY speedtest/*.js /speedtest/
COPY speedtest/favicon.ico /speedtest/
COPY speedtest/docker/*.php /speedtest/
COPY speedtest/docker/entrypoint.sh /

EXPOSE 8080
CMD ["bash"]
