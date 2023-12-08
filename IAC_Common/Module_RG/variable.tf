variable "resource_groups" {
  type = list(object({
    name     = string
    location = string
    tags     = map(string)
  }))
},

variable "storage_accounts" {
  type = list(object({
    name          = string
    resource_group = string
    location      = string
    account_tier   = string
    account_replication_type = string
    tags          = map(string)
  }))
}

