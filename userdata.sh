#!/bin/bash
sudo yum update
sudo yum -y install git
sudo amazon-linux-extras install docker -y
sudo yum install docker -y
sudo systemctl start docker
sudo systemctl enable docker
sudo service docker start
sudo usermod -a -G docker ec2-user
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
mkdir git
sudo chmod 666 /var/run/docker.sock
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
git clone https://github.com/vasudev915/wordpress-db-yaml.git /home/ec2-user/git/
cd git/
sudo docker-compose up -d
