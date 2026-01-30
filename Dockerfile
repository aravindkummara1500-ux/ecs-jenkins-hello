FROM amazonlinux:2

RUN yum update -y && yum install -y httpd

WORKDIR /app

COPY index.html /app/index.html
COPY health.html /app/health.html
COPY start.sh /app/start.sh

RUN chmod +x /app/start.sh

EXPOSE 80

CMD ["/app/start.sh"]
