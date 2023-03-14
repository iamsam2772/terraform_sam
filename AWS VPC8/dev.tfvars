network = {
  region            = "ap-south-1"
  cidr_block        = ["10.10.0.0/16", "10.168.0.0/16"]
  cidr_block_tags   = ["vpc_1", "vpc_2"]
  subnet_name_tags1 = ["web1", "app1", "db1"]
  subnet_name_tags2 = ["web2", "app2", "db2"]
  subnet_azs        = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]
}