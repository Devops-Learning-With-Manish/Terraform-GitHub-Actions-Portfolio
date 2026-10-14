variable "environment" { 
  type = string 
}

variable "networks" {
  type = map(object({
    rg_name        = string
    location       = string
    vnet_name      = string
    vnet_address   = string
    subnet_name    = string
    subnet_address = string
  }))
}