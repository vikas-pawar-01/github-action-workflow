FROM ubuntu
COPY entrypoint.sh /usr/bin/docker/entrypoint.sh
RUN chmod +x /usr/bin/docker/entrypoint.sh

ENTRYPOINT [ "entrypoint.sh" ]
