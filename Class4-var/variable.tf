variable "region" {
  default = "us-east-2"
  type = string
  description = "Provide a region"
}

variable vpc_cidr {
  default = "10.0.0.0/16"
  type = string
}

variable "subnet1" {
    default = "10.0.1.0/24"
    type = string
}

variable "subnet2" {
    default = "10.0.2.0/24"
    type = string
}

variable "subnet3" {
    default = "10.0.3.0/24"
    type = string
}

variable instance_type {
    default = "t2.micro"
    type = string
}

variable port {
    type = number
    default = 22
}

