variable "region"{
}
# create a vpc
variable "vpc_name"{
}
variable "environment"{
}
variable "ami" {
    type = string
    default = "ami-005e54dee72cc1d00"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}
variable "instance_name"{
}

#variable "vpc_subnet_name"{
#}

