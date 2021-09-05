# VM Outputs
output "aws_ec2_arn" {
  value = "${module.ec2_creation.arn1}"
}
output "aws_ec2_capacity_reservation_specification" {
  value = "${module.ec2_creation.capacity_reservation_specification1}"
}
output "aws_ec2_instance_state" {
  value = "${module.ec2_creation.instance_state1}"
}
output "aws_ec2_primary_network_interface_id" {
  value = "${module.ec2_creation.primary_network_interface_id1}"
}
