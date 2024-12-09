resource "aws_instance" "ec2" {
  for_each = {
    "Dev" = "Env"
    "test" = "Env"
    "stage" = "Env"
  }
  ami = "ami-06b21ccaeff8cd686"
  instance_type = "t2.micro"
  tags = {
    Name = "Ec2-${each.key}"
  }
}