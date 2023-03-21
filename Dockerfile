FROM alpine:latest
RUN apk add git
RUN apk add sudo
RUN git clone https://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@github.com/Eddy08/mfe-map-service
RUN ls -l
RUN su -
RUN chmod +x mfe-map-service
CMD ["./mfe-map-service/run/start.sh"]


# echo "extension logic"

# # Build the custom image:

# docker build --file /example/Dockerfile --tag neo4j:5.5.0-enterprise-custom-container-1 /example

# # Create and run a container based on the custom image:

# docker run --interactive --tty --name custom-container-1 -p7687:7687 -p7474:7474 -p7473:7473 --env NEO4J_AUTH=neo4j/password --env NEO4J_ACCEPT_LICENSE_AGREEMENT=yes neo4j:5.5.0-enterprise-custom-container-1