## Create an EC2 Instance on AWS with a security group that consists of "Custom TCP" on port 8086

## If you're on Windows right click on your folder where you've stored your pem file, click Gitbash Here
## Set reading permission for your key-pair
### type "chmod 400 My-Key-Pair.pem"

## SSH into your EC2 instance by copy and paste the ssh command that allows you to connect to your Linux EC2 instance with your pem key, similar to this:
### type "ssh -i "My-Key-Pair.pem" ec2-user@ec2-35-183-118-29.ca-central-1.compute.amazonaws.com"
### enter "yes" when prompted
# Now you are inside of your EC2!!!



# Setup your EC2 environment
# Java 8
sudo yum install java-1.8.0-openjdk-devel -y

# Required to update to the latest version of Maven
sudo wget http://repos.fedorapeople.org/repos/dchen/apache-maven/epel-apache-maven.repo -O /etc/yum.repos.d/epel-apache-maven.repo
sudo sed -i s/\$releasever/6/g /etc/yum.repos.d/epel-apache-maven.repo
sudo yum install -y apache-maven
mvn –-version
# Git
sudo yum install git -y
# Now run your automated script. Script will run the below steps for you:

# Launch Tomcat Server and deploy your application
git clone <your repo>

# cd <your app>
cd devops-tech-talk-demo/AWS-EC2/HarryPotterAPI

# All installation inside your EC2 is finished! Now clone your repo and let your script do the rest
# Run the script
sh ./ec2-run.sh

#Navigate to your EC2 endpoint on port 8086 to view your application hosted on embedded Tomcat server
# ex. http://ec2-3-98-123-14.ca-central-1.compute.amazonaws.com:8086/characters/view/1
# Ctrl+C to stop Spring Boot App
# type exit to leave the EC2