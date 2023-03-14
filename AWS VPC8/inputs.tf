variable "network" {
  type = object({
    region            = string
    cidr_block        = list(string)
    cidr_block_tags   = list(string)
    subnet_name_tags1 = list(string)
    subnet_name_tags2 = list(string)
    subnet_azs        = list(string)
  })
}