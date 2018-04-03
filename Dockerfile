FROM ubuntu:xenial
LABEL maintainer "Laurence de Bruxelles <laurence.de-bruxelles@stfc.ac.uk>"

ADD https://github.com/resin-io/resin-cli/releases/download/v7.2.1/resin-cli-v7.2.1-linux-x64.zip /

RUN apt-get update && apt-get install -y \
	unzip \
	--no-install-recommends \
	&& rm -rf /var/lib/apt/lists/*

RUN mkdir -p /usr/local/lib \
	&& cd /usr/local/lib \
	&& unzip /resin-cli-v7.2.1-linux-x64.zip

ENV PATH "/usr/local/lib/resin-cli:${PATH}"
