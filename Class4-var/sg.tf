resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Aws allow tls"
  vpc_id = aws_vpc.main.id

  ingress {
    description = " Allowing TLS"
    from_port   = var.port[0]
    to_port     = var.port[0]
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = " Allowing TLS"
    from_port   = var.port[1]
    to_port     = var.port[1]
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
