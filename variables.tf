
variable "vsphere_user" {
        description = "login user name"
        type = string
        default = "terraform@vsphere.local"
}
variable "vsphere_password" {
        description = "login password"
        type = string
        sensitive = true
        default = "secretpassword"
}

variable "vsphere_server" {
        description = "server we are logging into, default is Dallas"
        type = string
        default = "172.25.29.2"
        # replace with 172.26.239.246 if Ottawa is needed
        # replace with 172.25.29.2 if Dallas is needed
}
variable "datacenter" {
        description = "Datacenter Name"
        type = string
        default = "ps-lab"
        # replace with OTT-PS if Ottawa is needed
        # replace with ps-lab if Dallas is needed
}
variable "cluster" {
        description = "Cluster Name"
        type = string
        default = "ps-lab-cluster"
        # replace with PS-LAB if Ottawa is needed
        # replace with ps-lab-cluster if Dallas is needed
}
variable "datastore" {
        description = "DataStore Name"
        type = list
        #default = ["OTT-PS-VMFS01","OTT-PS-VMFS02","OTT-PS-VMFS03","OTT-PS-VMFS04","OTT-PS-VMFS05","OTT-PS-VMFS06","OTT-PS-VMFS07","OTT-PS-VMFS08"]
        #For Dallas uncomment line below
        default = ["ps-datastore-01","ps-datastore-02","ps-datastore-03","ps-datastore-04","ps-datastore-05","ps-datastore-06","ps-datastore-07","ps-datastore-08"]
}
# MLM template
variable "template1" {
        description = "template name"
        type = string
        default = "DXC/A.TEMPLATES/FMO-MLM"
}
#Input the correct network for your MDS's below
variable "network1" {
        description = "Network name"
        type = string
        default = "ps-shared1-1062"
}
variable "network2" {
        description = "Network name"
        type = string
        default = "phase1-1133"
}
variable "network3" {
        description = "Network name"
        type = string
        default = "phase2-2133"
}
variable "network4" {
        description = "Network name"
        type = string
        default = "phase3-3133"
}
#Update the folder you want your community to be in
variable "folder" {
        description = "folder inside the vmware where vms are built"
        type = string
        default = "/DXC/GARYTEST"
}
# Input all the MDS names in your community below
variable "names" {
        type = list
        default = ["GW1","GW2"]
}
