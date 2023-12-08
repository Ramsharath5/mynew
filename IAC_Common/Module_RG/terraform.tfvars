resource_groups = [
  {
    name     = "rg1"
    location = "East US"
    tags     = { environment = "dev", application = "app1" }
  },
  {
    name     = "rg2"
    location = "West US"
    tags     = { environment = "qa", application = "app2" }
  }
]



storage_accounts = [
  {
    name                     = "storage1"
    resource_group          = "rg1"
    location                 = "East US"
    account_tier             = "Standard"
    account_replication_type = "LRS"
    tags                     = { environment = "dev", app = "app1" }
  },
  {
    name                     = "storage2"
    resource_group          = "rg2"
    location                 = "West US"
    account_tier             = "Premium"
    account_replication_type = "GRS"
    tags                     = { environment = "prod", app = "app2" }
  }
  
]
