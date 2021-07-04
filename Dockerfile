FROM nginx

ADD fiche /usr/local/bin/

ADD 40-fiche.sh /docker-entrypoint.d/
