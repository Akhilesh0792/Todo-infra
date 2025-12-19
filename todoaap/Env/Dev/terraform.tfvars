rg_perent = {
  "rg1" = {
    name     = "my_rg"
    location = "centralindia"
  }
}
vnet_perent = {
  "vnet1" = {
    vnet_name     = "my_vnet"
    location      = "centralindia"
    rg_name       = "my_rg"
    address_space = ["10.0.0.0/16"]
  }
}

subnet_perent = {
  subnet1 = {
    subnet_name          = "fruntendsubnet"
    rg_name              = "my_rg"
    virtual_network_name = "my_vnet"
    address_prefixes     = ["10.0.1.0/24"]
  }
  subnet2 = {
    subnet_name          = "backendsubnet"
    rg_name              = "my_rg"
    virtual_network_name = "my_vnet"
    address_prefixes     = ["10.0.2.0/24"]
  }
}

nic_perent = {
  nic1 = {
    nic_name    = "my_nic"
    location    = "centralindia"
    rg_name     = "my_rg"
    subnet_name = "fruntendsubnet"
    vnet_name   = "my_vnet"
    pip_name    = "my_pip"
    y = [
      {
        ip_name                       = "internal"
        private_ip_address_allocation = "Dynamic"
      }
    ]
  }
}

nsg_perent = {
  nsg1 = {
  nsg_name = "my_nsg"
  location = "centralindia"
  rg_name  = "my_rg"
  tags = {
    environment = "Production"
  }
  x = [
    {
      security_name              = "allow_all_inbound"
      priority                   = 100
      direction                  = "Inbound"
      access                     = "Allow"
      protocol                   = "Tcp"
      source_port_range          = "*"
      destination_port_range     = "*"
      source_address_prefix      = "*"
      destination_address_prefix = "*"
    }
  ]
}
}

pip_perent = {
  pip1 = {
  pip_name          = "my_pip"
  rg_name           = "my_rg"
  allocation_method = "Static"
  location          = "centralindia"
  }
}

vm_perent = {
  vm1 = {
    vm_name = "fruntendvm"
      rg_name = "my_rg"
      location = "centralindia"
      size = "Standard_D2s_v3"
      admin_username = "Akhilesh"
      admin_password = "Aastha@54321"
      nic_name = "my_nic"
}
}

sqldb_perent = {
  sqldb1 ={
    sqldb_name = "my_sqldb"
      license_type = "LicenseIncluded"
      collation = "SQL_Latin1_General_CP1_CI_AS"
      max_size_gb = 2
      sku_name = "S0"
      enclave_type = "VBS"
      sqlserver_name = "ak4389-sqlserver"
      rg_name = "my_rg"
}
}

sqlserver_perent = {
  sqlserver1 = {
    sqlserver_name = "ak4389-sqlserver"
    rg_name = "my_rg"
    location = "centralindia"
    version = "12.0"
    administrator_login = "Rekha"
    administrator_login_password = "Aksingh@123456789"
}
}