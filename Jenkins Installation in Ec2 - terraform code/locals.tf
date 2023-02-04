locals {

  ec2-tags = {

    name = "jenkins-ec2-instance"

  }

  security-group = {

    name        = "at 8080 "
    description = "allow all traffic 0.0.0.0/0 and SSH connectivity port 22  for all traffic "
  }

}