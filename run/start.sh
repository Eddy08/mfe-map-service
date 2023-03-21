#!/bin/ash
su -
docker run \
    --restart always \
    --publish=7474:7474 --publish=7687:7687 \
    --env NEO4J_AUTH=neo4j/Neo4j@123 \
    --volume=/path/to/your/data:/data \
    --volume=/path/to/your/logs:/logs \
    --volume=/var/run/docker.sock:/var/run/docker.sock \
    neo4j:5.5.0
