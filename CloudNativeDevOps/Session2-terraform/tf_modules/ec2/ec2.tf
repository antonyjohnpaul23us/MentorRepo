
resource "aws_vpc" "my_vpc" {
  cidr_block = "${var.vpc_cird_block}"#"172.16.0.0/16"

  tags = {
    Name = "${var.tags}"#"tf-example"
  }
}

resource "aws_subnet" "my_subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "${var.subnet_cird_block}"#"172.16.10.0/24"
  availability_zone = "${var.subnet_availabilityZone}"#"us-east-2a"

  tags = {
    Name = "${var.tags}"
  }
}

resource "aws_network_interface" "foo" {
  subnet_id   = aws_subnet.my_subnet.id
  private_ips = ["${var.aws_network_interface_pvt_ip}"]#["172.16.10.100"]

  tags = {
    Name = "primary_network_interface"
  }
}

resource "aws_instance" "foo" {
  ami           = "${var.aws_instance_ami}"#"ami-000256c6b59e92ca8"
  instance_type = "${var.aws_instance_instance_type}"#"t2.micro"

  network_interface {
    network_interface_id = aws_network_interface.foo.id
    device_index         = 0
  }

  credit_specification {
    cpu_credits = "${var.aws_instance_cpu_credits}"#"unlimited"
  }
}
