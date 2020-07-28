provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "myec2" {
    ami = "ami-08f3d892de259504d"
    instance_type = "t2.micro"
    key_name = "aws-July"


     provisioner "remote-exec" {
      inline = [
      "chmod +x /tmp/web.sh",
      "sh /tmp/script.sh ",
    ]

    connection {
    type     = "ssh"
    user     = "ec2-user"
    private_key = file("./aws-July.pem") 
  host     = self.public_ip
  }
  }
}
}