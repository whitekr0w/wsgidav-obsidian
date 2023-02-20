FROM python:3

RUN mkdir -p /app
WORKDIR /app

RUN pip install wsgidav cheroot lxml python-pam
RUN mkdir -p /var/dav

CMD wsgidav -c config.yaml

EXPOSE 8080
