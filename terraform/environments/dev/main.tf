module "resource_group" {
  source = "../../modules/resource_group"

  resource_group_name = var.resource_group_name
  location            = var.location
}

module "acr" {
  source = "../../modules/acr"

  acr_name            = var.acr_name
  location            = var.location
  resource_group_name = module.resource_group.resource_group_name
}

module "aks" {
  source = "../../modules/aks"

  aks_name            = var.aks_name
  location            = var.location
  resource_group_name = module.resource_group.resource_group_name
  node_count          = var.node_count
  vm_size             = var.vm_size
  acr_id              = module.acr.acr_id
}

module "ingress" {
  source = "../../modules/ingress"

  kube_config = module.aks.kube_config
}