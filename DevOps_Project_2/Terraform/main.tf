data "aws_ami" "amazon-linux" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-*-x86_64-gp2"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

resource "aws_instance" "dev_machine" {
  ami = data.aws_ami.amazon-linux.id
  subnet_id = "subnet-0bc8498f1e9b8de32"
  instance_type = "t2.micro"
  key_name = "igti-pa-02"

  tags = {
    Environment = "dev"
    Name = "${var.name}-server"
  }
}
