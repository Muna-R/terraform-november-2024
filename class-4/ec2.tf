data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "web" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = "2t.micro"
  #availability_zone      = "us-east-1a"
  subnet_id              = aws_subnet.main.id 
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  user_data              = file("apache.sh")

}

resource "aws_instance" "web-1" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = "t2.micro"
  #availability_zone      = "us-east-1b"
  subnet_id              = aws_subnet.main-3.id 
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  user_data              = file("apache.sh")
}

resource "aws_instance" "web-2" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = "t2.micro"
  #availability_zone      = "us-east-1c"
  subnet_id              = aws_subnet.main-2.id 
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  user_data              = file("apache.sh")

}

output "ec2" {
  value = aws_instance.web.public_ip
}