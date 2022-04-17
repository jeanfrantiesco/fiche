FROM nginx

RUN mkdir -p /etc/nginx/templates/

ADD default.conf.template /etc/nginx/templates/

ADD fiche /usr/local/bin/

ADD 40-fiche.sh /docker-entrypoint.d/
