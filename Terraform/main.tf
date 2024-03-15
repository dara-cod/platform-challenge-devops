provider "aws" {
  region     = var.region
}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "desafio-bankly-tatianadara"

  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = "desafiobankly"
  monitoring             = true
  vpc_security_group_ids = ["sg-04462355e9820e9c1"]
  subnet_id              = "subnet-0767053a5fe1d7546"

  tags = {
    Terraform   = "true"
    Environment = "sre"
    Autor       = "Tatiana Dara"
  }
}

resource "aws_security_group" "instance_sg" {
  name        = "instance_sg"
  description = "Security group for instance"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group_rule" "ssh_access" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = [var.ssh_cidr]
  security_group_id = aws_security_group.instance_sg.id
}

resource "aws_instance" "ubuntu_dara" {
  ami           = var.ami 
  instance_type = var.instance_type
  
  security_groups = [aws_security_group.instance_sg.name]
}

output "public_ip" {
  value = aws_instance.ubuntu_dara.public_ip
}