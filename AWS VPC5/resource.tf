resource "aws_vpc" "my_vpc" {
    count = 4
    cidr_block = "192.168.0.0/16"
    tags = {
        Name = "myvpcfromtf1"
    }
}