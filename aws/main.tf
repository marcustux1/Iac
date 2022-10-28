terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 4.16"
        }
    }

    required_version = ">= 0.12.0"
}

provider "aws" {
  region  = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-017fecd1353bcc96e"
  instance_type = "t2.micro"
  key_name = "iac-testes-alura"
#  user_data = <<-EOF
#                #!/bin/bash
#                cd /home/ubuntu
#                echo “<h1>Mensagem a ser mostrada</h1>” > index.html
#                nohup busybox httpd -f -p 8080 &
#                EOF

  tags = {
    Name = "Terraform Ansible Python"
  }

}