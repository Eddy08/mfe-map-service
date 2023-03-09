# Basic Graphql Server

## Create A Simple Graphql Query for Login data

### https://youtu.be/gvIqFDNGgwU?list=PLgGXSWYM2FpNRPDQnAGfAHxMl3zUG2Run

## Map Service:

0. Run the Project
1. Create a Graphql subscription such that any new user/ user's location is visible on the map
2. If a user is accessing from a new location show last n previous locations for two seconds ( store it in the db )
3. Get the Locations from a realtime Database like MongodB , where the locations are getting updated and removed in realtime, through the MAP UI which is storing it in the db
4. Map Service will consists of two programs :
   a. one as a analytics one
   b. second as a storage one
5. Try to use docker images and k8s for the same and also use microfrontends
6. Try to use native Images in dockerised environment to start and stop the application fastly for doing analysis and then storing back the response in the db
7. Try to create non persistent application such as temp. Neo4j db per person for doing the analysis
## Notes:

#### For Debuggin the Application:

mvn spring-boot:run
-Dspring-boot.run.arguments=--logging.level.org.springframework=TRACE,--logging.level.com.baeldung=TRACE

mvn spring-boot:run -Dspring-boot.run.arguments=--logging.level.org.springframework=TRACE,--logging.level.com.harsh=TRACE > output.txt

    mvn spring-boot:run -Dspring-boot.run.arguments=--logging.level.org.springframework=TRACE > output.txt

## Spring Boot , Docker , Java

# Notes

### https://github.com/spring-projects/spring-data-neo4j
