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
7. Try to create non persistent application such as HSQL db for transaction task and Neo4j db (persistent db - application) per person for doing the analysis
8. Learn about spring boot native images and how to run them in docker ( for less memory and fast execution)

**\* Optional steps : 9. Try to use nanovms for super fast boot up ** https://nanovms.com/ \*\* => https://ops.city/ 10. Try to monitor the api's with Micrometer

## Notes:

#### For Debuggin the Application:

mvn spring-boot:run
-Dspring-boot.run.arguments=--logging.level.org.springframework=TRACE,--logging.level.com.baeldung=TRACE

mvn spring-boot:run -Dspring-boot.run.arguments=--logging.level.org.springframework=TRACE,--logging.level.com.harsh=TRACE > output.txt

    mvn spring-boot:run -Dspring-boot.run.arguments=--logging.level.org.springframework=TRACE > output.txt

## Spring Boot , Docker , Java

# Notes

### https://github.com/spring-projects/spring-data-neo4j

### Using K8s:

Run below commands:

1. $/home/mfe/notes-app/backend/java/harsh/dashboard-security$ kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.7.0/aio/deploy/recommended.yaml
2. $/home/mfe/notes-app/backend/java/harsh/dashboard-security$ cd dashboard-security/
3. $/home/mfe/notes-app/backend/java/harsh/dashboard-security$ kubectl apply -f dashboard.adminuser.yml
4. $/home/mfe/notes-app/backend/java/harsh/dashboard-security$ kubectl -n kubernetes-dashboard create token admin-user
5. Token Generated: eyJhbGciOiJSUzI1NiIsImtpZCI6Ing4ZHZsQmtLdGF5MXBoUEFpdS1ibmZQZFl3QVh3OXBEQjhWWWdFUEZ4ODQifQ.eyJhdWQiOlsiaHR0cHM6Ly9rdWJlcm5ldGVzLmRlZmF1bHQuc3ZjLmNsdXN0ZXIubG9jYWwiXSwiZXhwIjoxNjc5NzY2MzM2LCJpYXQiOjE2Nzk3NjI3MzYsImlzcyI6Imh0dHBzOi8va3ViZXJuZXRlcy5kZWZhdWx0LnN2Yy5jbHVzdGVyLmxvY2FsIiwia3ViZXJuZXRlcy5pbyI6eyJuYW1lc3BhY2UiOiJrdWJlcm5ldGVzLWRhc2hib2FyZCIsInNlcnZpY2VhY2NvdW50Ijp7Im5hbWUiOiJhZG1pbi11c2VyIiwidWlkIjoiY2I0Zjg2MjctMjA4NS00ZDVhLWI2NjktOWMyZWIxMzY1ZDcwIn19LCJuYmYiOjE2Nzk3NjI3MzYsInN1YiI6InN5c3RlbTpzZXJ2aWNlYWNjb3VudDprdWJlcm5ldGVzLWRhc2hib2FyZDphZG1pbi11c2VyIn0.WIRj4ez1aMMkNUoX3RkiRrMZLmgXRgKpeCHdycn-k4ZY9x-KsPtcNHP0fDmFEa_tfQQsVjfe9rmQ-Hj4nijWWLyPNy8K2JicsoX7W0-ypZnebVRYbS-m8zSGri7ZUEtWnDhIphg3D9mWtTAE7J2iaTz8ebvwyCb7ZehPzXBfCDIzNQeBw_DqdGXT66Zs-rnA6ldqEbB3zF9JEnrskceo7m8iSkBmldw3eBy2DNM3qd5kRfFsI9ts6LVH8mzc9cK6T2WcnfjxiYVwqMoO4BTKK_RccCWKRxtKpXNZ_1mvIXxgieP0F2FajyzPAc3KsZj2LTc9VpxkQhcErQzKOUJtOA
6. Use this link : localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard/proxy
7. Run : kubectl run my-nginx --image=nginx:alpine
