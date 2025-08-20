# Primitive - number, string , boolean
# Complex - list, set, map , object


# Sourav = [1, 4 , 2, 6, 1, 4]
# Sourav = [1,4,2,6]
# Student = {
#     Sourav : 26
#     Bappa : 34
# }

# Student = {
#      Sourav : 26
#      Bappa : 34
#      Achinta : true
# }

variable "resource_group" {
   type = map(string)
   description = "values of RGs with location"
   default = {
     "rg1" = "eastus",
     "rg2" = "westus"
   }
}


variable "storage_account" {
  type = map(map(string))
  default = {
    "stg1" = {
    "name" = "achi82982"
    "rg_name" = "rg1"
    "location" = "eastus"
    "account_tier" = "Standard"
    "account_replication_type" = "LRS"
    },

    "stg2" = {
    "name" = "achi27192"
    "rg_name" = "rg2"
    "location" = "westus"
    "account_tier" = "Standard"
    "account_replication_type" = "LRS"
    }
  }
}

