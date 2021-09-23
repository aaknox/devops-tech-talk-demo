# Step 2: Install Jenkins within your EC2
# Overview:

# Steps:
```bash
# Install Jenkins
sudo wget -O /etc/yum.repos.d/jenkins.repo \
https://pkg.jenkins.io/redhat-stable/jenkins.repo

sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

sudo yum upgrade

sudo yum install jenkins java-1.8.0-openjdk-devel -y

sudo systemctl daemon-reload

sudo systemctl start jenkins

# Check Jenkins status
sudo systemctl status jenkins

#Connect to http://<your_server_public_DNS>:8080 from your favorite browser. You will be able to access Jenkins through its management interface

```
# References:
[Installing Jenkins on an AWS EC2](https://www.jenkins.io/doc/tutorials/tutorial-for-installing-jenkins-on-AWS/)