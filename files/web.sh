#/bin/bash
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd
sudo echo "<html><h1> Hello, this webpage is created using terraform remote execution </h1></html>" >> /var/www/html/index.html