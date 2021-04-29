#### RETRIEVE DATA INFORMATION ON VCENTER ####

data "vsphere_datacenter" "dc" {
  name =  var.datacenter
}
# Retrieve datastore information on vsphere (numbers start with 0)
data "vsphere_datastore" "datastore0" {
  name          = var.datastore.0
  datacenter_id = data.vsphere_datacenter.dc.id
}
data "vsphere_datastore" "datastore1" {
  name          = var.datastore.1
  datacenter_id = data.vsphere_datacenter.dc.id
}
data "vsphere_datastore" "datastore2" {
  name          = var.datastore.2
  datacenter_id = data.vsphere_datacenter.dc.id
}
data "vsphere_datastore" "datastore3" {
  name          = var.datastore.3
  datacenter_id = data.vsphere_datacenter.dc.id
}
data "vsphere_datastore" "datastore4" {
  name          = var.datastore.4
  datacenter_id = data.vsphere_datacenter.dc.id
}
data "vsphere_datastore" "datastore5" {
  name          = var.datastore.5
  datacenter_id = data.vsphere_datacenter.dc.id
}
data "vsphere_datastore" "datastore6" {
  name          = var.datastore.6
  datacenter_id = data.vsphere_datacenter.dc.id
}
data "vsphere_datastore" "datastore7" {
  name          = var.datastore.7
  datacenter_id = data.vsphere_datacenter.dc.id
}
data "vsphere_compute_cluster" "cluster" {
  name          = var.cluster
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_network" "network1" {
  name = var.network1
  datacenter_id = data.vsphere_datacenter.dc.id
}
data "vsphere_network" "network2" {
  name = var.network2
  datacenter_id = data.vsphere_datacenter.dc.id
}
data "vsphere_network" "network3" {
  name = var.network3
  datacenter_id = data.vsphere_datacenter.dc.id
}
data "vsphere_network" "network4" {
  name = var.network4
  datacenter_id = data.vsphere_datacenter.dc.id
}
data "vsphere_host" "host" {
  name = "172.25.29.6"
  datacenter_id = data.vsphere_datacenter.dc.id
  }