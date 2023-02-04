resource "aws_instance" "public-jenkins-instance" {

  ami                    = data.aws_ami.amzlinux2.id
  instance_type          = var.instance-type
  vpc_security_group_ids = [aws_security_group.public-ec2example.id]
  key_name               = "jenkins"
  user_data              = <<-EOF
  #!/bin/bash
  yum update -y
  wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
  rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
  yum upgrade -y
  amazon-linux-extras install java-openjdk11 -y
  yum install jenkins -y
  systemctl enable jenkins
  systemctl start jenkins
  EOF
  tags = {
    Name = local.ec2-tags.name
  }
}

