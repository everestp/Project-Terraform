
provider "aws" {
  region = "us-east-1"

}
resource "aws_instance" "my_ec2" {
  ami           = "ami-0532be01f26a3de55"
  instance_type = "t2.micro"
  tags = {
    Name = "my_first_ec2"
  }
}