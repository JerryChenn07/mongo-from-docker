FROM mongo:6.0.1

MAINTAINER JerryChen

ENV TZ Asia/Shanghai

COPY mongod.conf /etc/mongo/mongod.conf

CMD ["mongod","-f", "/etc/mongo/mongod.conf"]
