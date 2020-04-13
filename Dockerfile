FROM: alpine

WORKDIR /app

VOLUMES /input

RUN apk add cfv cksfv p7zip-full p7zip-rar unrar file

ADD https://github.com/arfoll/unrarall/blob/master/unrarall /app/

ENTRYPOINT ["unrarall"]

CMD --clean=none --skip-if-exists -s /input
