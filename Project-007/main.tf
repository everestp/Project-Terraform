provider "aws" {
region = "ap-south-1"
}
resource "aws_vpc" "main" {
cidr_block = "192.168.0.0/24"
enable_dns_support = true
enable_dns_hostnames = true
}
resource "aws_subnet" "subnet_az1" {
vpc_id = aws_vpc.main.id
cidr_block = "192.168.0.0/25"
availability_zone = var.az_list[0]
map_public_ip_on_launch = true
}
resource "aws_subnet" "subnet_az2" {
vpc_id = aws_vpc.main.id
cidr_block = "192.168.0.128/25"
availability_zone = var.az_list[1]
map_public_ip_on_launch = true

}