module "Resours_group" {
  source   = "../../modules/Rg"
  rg_child = var.rg_perent
}

module "Vnet" {
  depends_on = [module.Resours_group]
  source     = "../../modules/Vnet"
  vnet_child = var.vnet_perent
}

module "Subnet" {
  depends_on   = [module.Vnet]
  source       = "../../modules/subnet"
  subnet_child = var.subnet_perent
}

module "Nic" {
  depends_on = [ module.Resours_group, module.Public_IP ]
  source = "../../modules/Nic"
  nic_child = var.nic_perent
}

module "Nsg" {
  depends_on = [ module.Resours_group, module.Subnet ]
  source = "../../modules/Security_group"
  nsg_child = var.nsg_perent
}

module "Public_IP" {
   depends_on = [ module.Vnet,]
   source = "../../modules/Public_IP"
   pip_child = var.pip_perent  
}

module "VM" {
  depends_on = [ module.Resours_group, module.Subnet, module.Nic ]
  source = "../../modules/Vm"
  vm_child = var.vm_perent
}

module "Sqldb" {
  depends_on = [ module.Sqlserver ]
  source = "../../modules/sqldb"
  sqldb_child = var.sqldb_perent
}

module "Sqlserver" {
  source = "../../modules/sqlserver"
  sqlserver_child = var.sqlserver_perent
}