mvn package # bundled your app's jar file into a target folder

## This is how we copy the .war file from our target foler to current directory
sudo cp target/HarryPotterDemo-0.0.1-SNAPSHOT.jar  .

## Run our Spring Boot app
sudo mvn spring-boot:run