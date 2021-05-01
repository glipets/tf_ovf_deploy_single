
variable "vsphere_user" {
        description = "login user name"
        type = string
}
variable "vsphere_password" {
        description = "login password"
        type = string
        sensitive = true
}

variable "vsphere_server" {
        description = "server we are logging into, default is Dallas"
        type = string
}
variable "datacenter" {
        description = "Datacenter Name"
        type = string
}
variable "cluster" {
        description = "Cluster Name"
        type = string
}
variable "datastore" {
        description = "DataStore Name"
        type = list
}
variable "host" {
        description = "Vsphere host"
        type = string
}
# MLM template
variable "template1" {
        description = "template name"
        type = string
}
#Input the correct network for your MDS's below
variable "network1" {
        description = "Network name"
        type = string
}
variable "network2" {
        description = "Network name"
        type = string
}
variable "network3" {
        description = "Network name"
        type = string
}
variable "network4" {
        description = "Network name"
        type = string
}
#Update the folder you want your community to be in
variable "folder" {
        description = "folder inside the vmware where vms are built"
        type = string
}
# Input all the MDS names in your community below
variable "names" {
        type = list
}
###############  Checkpoint Variables 
variable "hostname" {
         type= list
} 
variable "password_type" {
         type= string
} 
variable "admin_hash" {
         type= string
} 
variable "ipaddr_v4" {
         type= list
}
variable "masklen_v4" {
         type= list
}
variable "default_gw_v4" {
         type= list
}
variable "eth1_ipaddr_v4" {
         type= list
}
variable "eth1_masklen_v4" {
         type= list
}
variable "primary" {
         type= list
}
variable "ftw_sic_key" {
         type= string
} 
variable "is_gateway_cluster_member" {
         type= list
}
variable "clish_commands" {
         type= string
} 