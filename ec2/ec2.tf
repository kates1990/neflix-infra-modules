resource "aws_instance" "module_instance" {
  ami           = var.ami_id # us-east-2
  instance_type = "t2.micro"
  vpc_security_group_ids = [var.sg_id]

  tags = {
    Name = "module-server"
  }

}