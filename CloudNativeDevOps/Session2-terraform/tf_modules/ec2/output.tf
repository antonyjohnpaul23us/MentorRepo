# VM Outputs
output "arn1" {
  value = "${aws_instance.foo.arn}"
}
output "capacity_reservation_specification1" {
  value = "${aws_instance.foo.capacity_reservation_specification}"
}
output "instance_state1" {
  value = "${aws_instance.foo.instance_state}"
}
output "primary_network_interface_id1" {
  value = "${aws_instance.foo.primary_network_interface_id}"
}

