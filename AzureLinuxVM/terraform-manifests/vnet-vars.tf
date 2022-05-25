# Virtual Network

variable "vnet_name" {
  description = "Name of the Virtual Network"
  type = string
  default = "vnet-default"
}

variable "vnet_address_space" {
  description = "Address Space (CIDR) of the Virtual Network"
  type = list(string)
  default = ["10.0.0.0/16"]
}

# Subnets

## Web Subnet

variable "snet_web" {
  description = "Web Subnet Name"
  type = string
  default = "websubnet"
}

variable "snet_web_address_space" {
  description = "Web Subnet Address Space"
  type = list(string)
  default = ["10.0.0.0/24"]
}

## App Subnet

variable "snet_app" {
  description = "App Subnet Name"
  type = string
  default = "appsubnet"
}

variable "snet_app_address_space" {
  description = "App Subnet Address Space"
  type = list(string)
  default = ["10.0.1.0/24"]
}

## DB Subnet

variable "snet_db" {
  description = "DB Subnet Name"
  type = string
  default = "dbsubnet"
}

variable "snet_db_address_space" {
  description = "DB Subnet Address Space"
  type = list(string)
  default = ["10.0.2.0/24"]
}

## Bastion Subnet

variable "snet_bastion" {
  description = "Bastion Subnet Name"
  type = string
  default = "bastionsubnet"
}

variable "snet_bastion_address_space" {
  description = "Bastion Subnet Address Space"
  type = list(string)
  default = ["10.0.3.0/24"]
}