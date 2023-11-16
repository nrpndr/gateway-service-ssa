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
API Gateway does the job of communicating to all the down stream services in the cineevent application

* CRUD operation for users
* Register user api
* User Login api
* ValidateToken api
* CRUD operation for movies
* CRUD operation for events
* CRUD operation for movie reviews
* CRUD operation for event reviews

## REST apis details
Use [Postman](https://www.postman.com/) to play around with the Apis working via the gateway service

This project contains also the [Postman export file](https://github.com/nrpndr/gateway-service/blob/main/GatewayService.postman_collection.json) with all the configured test calls:

![Postman](https://github.com/nrpndr/gateway-service/blob/main/postman-ui.png "Postman Collection")

### Running the project
- To run the program, execute below commands in terminal at root level
	
    ```
    mvn clean install
    java -jar target/gateway-service.jar
    ```
- Prerequisite to the above is that you have to have the following service running if you want to play around with the APIs. The service will come up event without these backend service without being up, just that the APIs will not function.
- [userservice](https://github.com/nrpndr/user-service)
- [movieservice](https://github.com/Dharrani-K/2022mt93105-Scalable-Service-Assignment)
- [eventservice](https://github.com/shubham-shar/Event-Service)
- [reviewservice](https://github.com/nrpndr/review-service)

- If you want to avoid all that hassle, simply do the following(You need to have docker desktop installed for this). Even 
	
    ```
    mvn clean install
    docker compose up
    ```
    
### Running the project on minikube
**NOTE** - Kindly install the below software before moving ahead
- minikube
- kubectl
- docker
- Once you have installed above software, run below commands to get this application deployed
- Build the code
- `mvn clean install`
- Build the docker image
- `docker build -t <github-user-id>/gateway-service:<tag> .`
- Push the image to docker hub. 
- `docker push <github-user-id>/gateway-service:<tag>`
- Start minikube
- `minikube start`
- Set docker as default context
- `docker context use default`
- Create deployment for gateway service
- `kubectl apply -f ./gateway-service-server-deployment.yaml`
- Check the deployments
- `kubectl get deployments -o wide`
- Check the pod logs
- `kubectl logs -f <pod-name>`
- Create service for gateway service
- `kubectl apply -f ./gateway-service-server-service.yaml`
- Check the service
- `kubectl get services`
- Check details of the service
- `kubectl describe service gateway-service-server`
- Interact with the service via HTTP endpoint
- `minikube serivce gateway-service-server`
- Scale deployment to 2
- `kubectl scale deployment gateway-service-server --replicas=2`
- Stop service
- `kubectl delete service gateway-service-server`
- Stop deployment
- `kubectl delete deployment gateway-service-server`
- Stop minikube
- `minikube stop`


## Acknowledgments
- [Baeldung](https://www.baeldung.com)
- [StackoverFlow](https://stackoverflow.com/)
- [Mkyong](https://mkyong.com/)
- [spring.io](https://spring.io/)
- [Spring Cloud Gateway](https://spring.io/projects/spring-cloud-gateway)
- [Docker](https://docs.docker.com/)