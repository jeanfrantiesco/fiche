FROM nginx

ADD fiche /usr/local/bin/

#RUN apt update -y \
#	&& apt upgrade -y \
#	&& rm -rf /var/cache/* 

ADD 40-fiche.sh /docker-entrypoint.d/
