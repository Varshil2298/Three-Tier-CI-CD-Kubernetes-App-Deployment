resource "null_resource" "jenkins_provisioner" {
  depends_on = [aws_instance.web]

  provisioner "remote-exec" {
    connection {
      type        = "ssh"
      user        = "ubuntu"
      private_key = tls_private_key.ec2_key.private_key_pem
      host        = aws_instance.web.public_ip
    }

   inline = [
      "sudo apt update",
      "sudo apt install -y openjdk-17-jre",
      "curl -fsSL https://pkg.jenkins.io/debian/jenkins.io-2023.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null",
      "echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null",
      "sudo apt-get update",
      "sudo apt-get install -y jenkins"
    ]
  }
}  

#   triggers = {
#     always_run = "${timestamp()}"
#   }
# }
