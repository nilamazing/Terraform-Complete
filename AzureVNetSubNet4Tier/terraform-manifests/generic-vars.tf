variable "business_division" {
  description = "Business Division in large oragnization this Infrastructure belongs"
  type = string
  default = "sap"
}

variable "environment" {
  description = "Environment Variable used as a prefix"
  type = string
  default = "dev"
}

variable "resource_group_name" {
    description = "Name of the Resource Group"
    type=string
    default = "rg-default"
}

variable "resource_group_location" {
  description = "Resource Group Location"
  type = string
  default = "uksouth"
}