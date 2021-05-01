resource "vsphere_virtual_machine" "gw" {
  name             = var.names[count.index]
  folder         = var.folder
  resource_pool_id = data.vsphere_compute_cluster.cluster.resource_pool_id
  datastore_id = data.vsphere_datastore.datastore0.id
  host_system_id = data.vsphere_host.host.id
  datacenter_id = data.vsphere_datacenter.dc.id
  #Below to make sure it will not wait for IP address to get assigned
  wait_for_guest_net_timeout = 0
  wait_for_guest_ip_timeout  = 0
  num_cpus = 4
  memory = 4096
  scsi_type = "lsilogic"

  disk {
    label = "disk0"
    size  = "100"
  }
  network_interface {
    network_id = data.vsphere_network.network1.id
  }
  network_interface {
    network_id = data.vsphere_network.network2.id
  }
  network_interface {
    network_id = data.vsphere_network.network3.id
  }
  network_interface {
    network_id = data.vsphere_network.network4.id
  }
  ovf_deploy {
    allow_unverified_ssl_cert = true

    #local_ovf_path = "/home/ps/tf/ovf/Check_Point_SG_R80.40.ovf"
    local_ovf_path = "C:\\Users\\admin\\Downloads\\ovf\\Check_Point_SG_R80.40.ovf"

    disk_provisioning = "thick"
    ovf_network_map = {
      "VM Network1" = data.vsphere_network.network1.id
    }
  }
  vapp {
    properties = {
     "hostname" = var.hostname[count.index],
     "password_type" = var.password_type,
     "admin_hash" = var.admin_hash,
     "ipaddr_v4" = var.ipaddr_v4[count.index],
     "masklen_v4" = var.masklen_v4[count.index],
     "default_gw_v4" = var.default_gw_v4[count.index],
     "eth1_ipaddr_v4": var.eth1_ipaddr_v4[count.index],
     "eth1_masklen_v4": var.eth1_masklen_v4[count.index],
     "primary": var.primary[count.index],
     "ftw_sic_key" = var.ftw_sic_key,
     "is_gateway_cluster_member" = var.is_gateway_cluster_member[count.index],
     "clish_commands" = var.clish_commands
  }
}
count =2
}