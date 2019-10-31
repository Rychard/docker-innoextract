FROM ubuntu:eoan

RUN apt-get update && apt-get install -y \
    innoextract \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /src

COPY /sh /sh

ENTRYPOINT [ "/sh/start.sh" ]