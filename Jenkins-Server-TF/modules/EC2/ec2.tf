resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.example_sg.id]
  key_name             = aws_key_pair.ec2_key_pair.key_name

  

  tags = {
    Name = "${var.environment}-${var.ec2-instance-name}"
    "Service" = "Compute"
    "AWS-Resource" = "EC2"
    "Technology" = "Amazon linux"
    }
}

resource "tls_private_key" "ec2_key" {
  algorithm = "RSA"
  rsa_bits  = 2048
}

resource "aws_key_pair" "ec2_key_pair" {
  key_name   = var.key_name
  public_key = tls_private_key.ec2_key.public_key_openssh
}

resource "local_file" "private_key" {
  content  = tls_private_key.ec2_key.private_key_pem
  filename = "${path.module}/jenkins-kp.pem"
  file_permission = "0400"
}



