FROM alpine:latest
RUN apk add git

RUN git clone https://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@github.com/Eddy08/mfe-map-service
RUN ls -l

RUN apk add --update docker openrc
# RUN rc-update add cgroups
# RUN service docker start
# RUN rc-update add docker boot
# RUN apk add sudo
# RUN su -
# RUN chmod +x mfe-map-service
CMD ["./mfe-map-service/run/start.sh"]
# RUN dockerd >/tmp/docker.stdout 2>/tmp/docker.stderr && docker run --restart always --publish=7474:7474 --publish=7687:7687 --env=NEO4J_AUTH=neo4j/Neo4j@123 --volume=/var/run/docker.sock:/var/run/docker.sock neo4j:5.5.0

# RUN dockerd >/tmp/docker.stdout 2>/tmp/docker.stderr && docker run --restart always --publish=7474:7474 --publish=7687:7687 --env=NEO4J_AUTH=neo4j/Neo4j@123 --volume=/var/run/docker.sock:/var/run/docker.sock neo4j:5.5.0
EXPOSE 7474
EXPOSE 7687