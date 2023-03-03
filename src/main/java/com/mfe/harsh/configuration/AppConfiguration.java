package com.mfe.harsh.configuration;

import org.neo4j.driver.AuthToken;
import org.neo4j.driver.AuthTokens;
import org.neo4j.driver.Driver;
import org.neo4j.driver.GraphDatabase;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.neo4j.config.AbstractReactiveNeo4jConfig;
import org.springframework.data.neo4j.repository.config.EnableReactiveNeo4jRepositories;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@EnableReactiveNeo4jRepositories
@EnableTransactionManagement
class AppConfiguration extends AbstractReactiveNeo4jConfig  {

    @Override
    public Driver driver() {
        return GraphDatabase.driver("bolt://localhost:7687",AuthTokens.basic("neo4j","neo4j"));
    }
    
    
}
