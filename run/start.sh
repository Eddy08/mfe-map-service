#!/bin/ash
docker run \
    --restart always \
    --publish=7474:7474 --publish=7687:7687 \
    --env NEO4J_AUTH=neo4j/neo4j \
    --volume=/path/to/your/data:/data \
    --volume=/path/to/your/logs:/logs \
    neo4j:5.5.0
