FROM ubuntu:focal

RUN apt-get update \
	&& apt-get install clang-format

COPY ./entrypoint.sh /usr/local/bin/
WORKDIR /code

ENTRYPOINT [ "entrypoint.sh" ]
# CMD [ "FIXIT" ]
