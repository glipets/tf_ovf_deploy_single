
#comment out below if not executing on Dallas and uncomment OTTAWA block
vsphere_server = "172.25.29.2"
datacenter = "ps-lab"
cluster = "ps-lab-cluster" 
datastore = ["ps-datastore-01","ps-datastore-02","ps-datastore-03","ps-datastore-04","ps-datastore-05","ps-datastore-06","ps-datastore-07","ps-datastore-08"]
host = "172.25.29.6"
# host ip address is required for OVF operations

#   comment out below if not executing on OTTAWA and uncomment Dallas block
#   vsphere_server = "172.26.239.246"
#   datacenter = "OTT-PS"
#   cluster = "PS-LAB" 
#   datastore = ["OTT-PS-VMFS01","OTT-PS-VMFS02","OTT-PS-VMFS03","OTT-PS-VMFS04","OTT-PS-VMFS05","OTT-PS-VMFS06","OTT-PS-VMFS07","OTT-PS-VMFS08"]
#   host = "PUT IP ADDRESS HERE"

# VM PROPERTIES
template1 = "DXC/A.TEMPLATES/FMO-MLM"
network1 = "ps-shared1-1062"
network2 =  "phase3-3133"
network3 = "phase3-3133"
network4 = "phase3-3133"
folder = "/DXC/GARYTEST"
names = ["GW7","GW2"]

# CHECKPOINT PROPERTIES
 hostname = ["GW-TF1","GW-TF2"]
 password_type = "Plain"
 admin_hash = "vpn123"
 ipaddr_v4 = ["172.25.62.17","172.25.62.18"]
 masklen_v4 = ["24", "24"]
 default_gw_v4 = ["172.25.62.240","172.25.62.240"]
 eth1_ipaddr_v4 = ["172.25.1.1","172.25.1.1"]
 eth1_masklen_v4 = ["24","24"]
 primary = ["8.8.8.8", "1.1.1.1"]
 ftw_sic_key = "vpn123"
 is_gateway_cluster_member = ["Yes","Yes"]
 clish_commands = "set user admin shell /bin/bash"