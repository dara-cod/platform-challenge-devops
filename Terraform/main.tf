# Definição do provedor AWS
provider "aws" {
    region  = var.region
}

# Recurso para a instância EC2
resource "aws_instance" "ubuntu_dara" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  
  # Associa a instância ao grupo de segurança definido abaixo
  vpc_security_group_ids = [aws_security_group.instance_sg.id]

  tags = {
    Terraform   = "true"
    Environment = "sre"
    Autor       = "Tatiana Dara"
  }
}

# Definição do grupo de segurança
resource "aws_security_group" "instance_sg" {
  name        = "instance_sg"
  description = "Grupo de seguranca da instancia"

  # Regra para permitir tráfego HTTP (porta 80) de qualquer lugar
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Regra para permitir tráfego HTTPS (porta 443) de qualquer lugar
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Regra para permitir tráfego SSH (porta 22) apenas para o IP ou range especificado
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.ssh_cidr_range]
  }

  # Regra para permitir todo o tráfego de saída
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Outputs para exibir o IP público da instância
output "public_ip" {
  value = aws_instance.ubuntu_dara.public_ip
}
