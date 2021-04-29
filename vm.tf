resource "vsphere_virtual_machine" "gw2" {
  name             = var.names[0]
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
     "hostname" = "GW-TF",
     "password_type" = "Plain",
     "admin_hash" = "vpn123",
     "ipaddr_v4" = "172.25.62.17",
     "masklen_v4" = "24",
     "default_gw_v4" = "172.25.62.240",
     "eth1_ipaddr_v4": "172.25.1.1",
     "eth1_masklen_v4": "24",
     "primary": "8.8.8.8",
     "ftw_sic_key" = "vpn123",
     "is_gateway_cluster_member" = "Yes",
     "clish_commands" = "set user admin shell /bin/bash"
  }
}
}