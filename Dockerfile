FROM srmtlab/ibiscreator:latest
LABEL maintainer Akira Kamiya <a.kamiya.208@gmail.com>

ENV APP_DIR /opt/IBIS_creator
ENV DOCKERIZE_VERSION v0.6.1

# install dockerize
RUN apk add --no-cache openssl
RUN wget https://github.com/jwilder/dockerize/releases/download/${DOCKERIZE_VERSION}/dockerize-alpine-linux-amd64-${DOCKERIZE_VERSION}.tar.gz \
	&& tar -C /usr/local/bin -xzvf dockerize-alpine-linux-amd64-${DOCKERIZE_VERSION}.tar.gz \
	&& rm dockerize-alpine-linux-amd64-${DOCKERIZE_VERSION}.tar.gz

WORKDIR ${APP_DIR}
