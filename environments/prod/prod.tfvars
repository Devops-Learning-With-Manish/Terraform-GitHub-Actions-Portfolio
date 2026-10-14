networks = {
  "net1" = {
    rg_name        = "rg-frontend"
    location       = "eastus"
    vnet_name      = "vnet-frontend"
    vnet_address   = "10.2.0.0/16"
    subnet_name    = "snet-web"
    subnet_address = "10.2.1.0/24"
  }
  "net2" = {
    rg_name        = "rg-backend"
    location       = "eastus"
    vnet_name      = "vnet-backend"
    vnet_address   = "10.3.0.0/16"
    subnet_name    = "snet-db"
    subnet_address = "10.3.1.0/24"
  }
}