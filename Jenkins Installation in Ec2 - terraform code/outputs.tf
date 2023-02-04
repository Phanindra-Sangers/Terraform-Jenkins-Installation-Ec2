output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.public-jenkins-instance.id
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  
  value       =  aws_instance.public-jenkins-instance.public_ip
}


### if you use count element for multiple instances  and want to access id of instances using output 


# locals {
#  instance_list = aws_instance.example.*.id
#} 


# output "first_instance_id" {
#   value = "${element(local.instance_list, 0)}"
# }


# (or)

# output "first_instance_id" {
#   value = [for instance in aws_instance.public-jenkins-instance.id : instance.id]
# }