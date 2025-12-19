variable "subnet_child" {
    type = map(object({
      subnet_name = string
      rg_name = string
      virtual_network_name = string
      address_prefixes = list(string)
    }))
  
}