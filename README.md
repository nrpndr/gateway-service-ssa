# gateway-service
API Gateway to communicate to all the down stream services in the cineevent application

## Getting Started
It a spring boot, Spring Cloud Gateway project with Maven.
Clone the github Repo and import in IDE of your choice. \
**Notes:**
- If you have the zipped project, just unzip it and import in any IDE

## Built With
* [Java 17](https://openjdk.org/projects/jdk/17/)
* [Maven](https://maven.apache.org/)
* [Spring boot 3.1.5](https://spring.io/projects/spring-boot)
* [Spring Cloud Gateway](https://spring.io/projects/spring-cloud-gateway)
* [Docker](https://docs.docker.com/)

### Prerequisites
- Java 17
- Maven 3.6.3
- Docker Desktop 24.X.X (If you plan to deploy and test in local)

### Installing
- Install java 17 \
  You can use [opendjdk 17](https://download.java.net/openjdk/jdk17/ri/openjdk-17+35_windows-x64_bin.zip) and configure your PATH to use this version
- Install Maven \
  Visit [this link](https://maven.apache.org/install.html) in order to install maven in your local.
- Install Docker Desktop \
  Visit [this link](https://docs.docker.com/desktop/install/mac-install/). If you are a windows desktop user refer [this](https://docs.docker.com/desktop/install/windows-install/)
  
#### Exposed REST apis
API Gateway does the job of communicating to all the down stream services in the cineevent application \

* CRUD operation for events

## REST apis details
Using a browser it's possible to interact with the REST apis exposed by this service with Swagger:

http://localhost:8080/swagger-ui.html

![Swagger](https://github.com/nrpndr/event-service/blob/main/swagger-ui.png "Swagger interface")

Another alternative is to use Postman (https://www.postman.com/).

This project contains also the [Postman export file](https://github.com/nrpndr/event-service/blob/main/EventService.postman_collection.json) with all the configured test calls:

![Postman](https://github.com/nrpndr/event-service/blob/main/postman-ui.png "Postman Collection")

### Running the project
- To run the program, execute below commands in terminal at root level
	
    ```
    mvn clean install
    java -jar target/gateway-service.jar
    ```
- Prerequisite to the above is that you have to have the following service running\
- [userservice](https://github.com/nrpndr/user-service)\
- [movieservice](https://github.com/nrpndr/movie-service)\
- [eventservice](https://github.com/nrpndr/event-service)\
- [reviewservice](https://github.com/nrpndr/review-service)
- If you want to avoid all that hassle, simply do the following(You need to have docker desktop installed for this)
	
    ```
    mvn clean install
    docker compose up
    ```

## Acknowledgments
- [Baeldung](https://www.baeldung.com)
- [StackoverFlow](https://stackoverflow.com/)
- [Mkyong](https://mkyong.com/)
- [spring.io](https://spring.io/)
* [Spring Cloud Gateway](https://spring.io/projects/spring-cloud-gateway)
- [Docker](https://docs.docker.com/)