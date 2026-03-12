variable "location" {
  type        = string
  description = "Azure region"
}

variable "resource_group_name" {
  type        = string
  description = "AKS resource group name"
}

variable "acr_name" {
  type        = string
  description = "Azure Container Registry name"
}

variable "aks_name" {
  type        = string
  description = "AKS cluster name"
}

variable "node_count" {
  type        = number
  description = "AKS node count"
}

variable "vm_size" {
  type        = string
  description = "AKS VM size"
}