## Create an EC2 Instance on AWS with a security group that consists of "Custom TCP" on port 8086

## If you're on Windows right click on your folder where you've stored your pem file, click Gitbash Here
## Set reading permission for your key-pair
chmod 400 My-Key-Pair.pem

## SSH into your EC2 instance by copy and paste the ssh command that allows you to connect to your Linux EC2 instance with your pem key, similar to this:
ssh -i "My-Key-Pair.pem" ec2-user@ec2-35-183-118-29.ca-central-1.compute.amazonaws.com

# Setup your EC2 environment
sudo yum install java-1.8.0-openjdk-devel -y
sudo yum install maven -y
sudo yum install git -y
sudo amazon-linux-extras install tomcat8.5 -y

# Launch Tomcat Server and deploy your application
git clone https://github.com/aaknox/devops-tech-talk-demo.git
cd devops-tech-talk-demo
cd AWS-EC2
cd HarryPotterAPI

mvn package
## This is how we copy the .war file from our target foler to tomcat's webapps folder
scp /target/HarryPotterAPI-0.0.10-SNAPSHOT.jar .

## Run our Spring Boot app
sudo mvn spring-boot:run

#Navigate to your EC2 endpoint on port 8086 to view your application hosted on embedded Tomcat server