networks = {
  "net1" = {
    rg_name        = "rg-frontend"
    location       = "eastus"
    vnet_name      = "vnet-frontend"
    vnet_address   = "10.0.0.0/16"
    subnet_name    = "snet-web"
    subnet_address = "10.0.1.0/24"
  }
  "net2" = {
    rg_name        = "rg-backend"
    location       = "eastus"
    vnet_name      = "vnet-backend"
    vnet_address   = "10.1.0.0/16"
    subnet_name    = "snet-db"
    subnet_address = "10.1.1.0/24"
  }
}