FROM yuncms/docker:web

MAINTAINER XUTL <xutl@gmail.com>

ADD nginx.conf /etc/nginx/conf.d/default.conf

COPY . /app/

WORKDIR /app

RUN chmod 700 /app/run.sh \
    && chmod 777 /app/runtime

EXPOSE 80

CMD ["/app/run.sh"]
