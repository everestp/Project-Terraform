
provider "aws" {
  region = "us-east-1"

}
resource "aws_instance" "web" {
  ami           = "ami-0532be01f26a3de55"
  instance_type = "t2.micro"
  tags = {
    Name = "web_ec2"
  }
}

output "ec2_id" {
  value = aws_instance.web.id

}
output "public_ip" {
  value = aws_instance.web.public_ip
}