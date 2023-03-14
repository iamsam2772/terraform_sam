variable "network" {
  type = object({
    region           = string
    cidr_block       = string
    subnet_cidrs     = list(string)
    subnet_name_tags = list(string)
    subnet_azs       = list(string)
  })
}