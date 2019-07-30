resource "aws_instance" "test-ec2-instance" {
  ami = "${var.ami_id}"
 // count = 2

  instance_type = "t2.micro"
  key_name = "${var.ami_key_pair_name}"
  security_groups = ["${aws_security_group.ingress-all-test.id}"]
tags = {
    Name = "terraform-${var.ami_name}"
    //Name = "terraform-${var.ami_name}-${count.index + 1}"
                                                                                                                                                                                                                                             
  }
subnet_id = "${aws_subnet.subnet-uno.id}"
}
