data "aws_ami" "amazon-linux-2" {
 most_recent = true
 owners = ["amazon"]
 filter {
   name   = "owner-alias"
   values = ["amazon"]
 }
 filter {
   name   = "name"
   values = ["amzn2-ami-hvm*"]
 }
}


data "aws_subnet" "subnet_name" {
   id = "subnet-09039726322438cfd"
}

locals {
  owner_name = "Aidan"
}

resource "aws_instance" "aid-instance" {
  ami           = data.aws_ami.amazon-linux-2.id
  subnet_id     = data.aws_subnet.subnet_name.id
  instance_type = "t2.micro"
  tags = {
    Name = "aidanas-instance"
    Owner= "owner-${local.owner_name}"
  }
}








































































































































































































































































































































































































































































