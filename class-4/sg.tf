resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Aws allow tls"
  vpc_id = aws_vpc.main.id

  ingress {
    description = " Allowing TLS"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = " Allowing TLS"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
