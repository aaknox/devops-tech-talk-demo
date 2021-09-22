# Step 1: Set up an AWS EC2
## Overview:
- AWS EC2 (elastic cloud computing) services...
1. Create an EC2 Instance
2. Before setup finishes, download your private key-pair file.
    - Amazon Elastic Compute Cloud (Amazon EC2) is a web service that provides secure, resizable compute capacity in the cloud. It is designed to make web-scale cloud computing easier for developers. Amazon EC2’s simple web service interface allows you to obtain and configure capacity with minimal friction. It provides you with complete control of your computing resources and lets you run on Amazon’s proven computing environment.
    - Computing environment = a virtual machine in the cloud instead of on your local machine
        - Less processing power on your side
        - Learn more [here](https://aws.amazon.com/ec2/?ec2-whats-new.sort-by=item.additionalFields.postDateTime&ec2-whats-new.sort-order=desc).
3. Connect to your EC2 instance.
The standard protocol for connections to an EC2 instance is SSH (Secure Shell). Using the Unix ssh command or a Windows tool like PuTTY a user can establish a connection using a .pem key file which contains a private/public key pair. When an EC2 instance is created, the complimentary key value is stored on the instance as well and all connections must use this file to authenticate.

Using ssh to connect:
```ssh -i 'path/to/your.pem' ec2UserName@ec2-IP-or-DNS```

For Amazon Linux AMIs, the username is ec2-user. For an Ubuntu AMI, it would be ubuntu. The server can be reached via its short IPv4 address or the generated DNS name, both of which are generated for your EC2 instance. Be wary of any address changes after instances are shut down.

When first connecting, answer yes to the prompt asking to register the new server. Afterwards your shell prompt will now reflect a session on your EC2.

1. Follow the SSH Client instructions
2. Create the bash script that will automate connecting and running our Java app in the EC2
3. Put your downloaded key-pair file into the project folder
4. Run the bash script
5. If all goes well, maven/java/jenkins will be installed within the ec2
