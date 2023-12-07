
resource "aws_instance" "instance_type" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "instance_name"
  }
}
