variable "compartment_id" {
  type    = string
  default = "ocid1.compartment.oc1..aaaaaaaaeji7lmv6yrejwphcmajsuq5vabnrwpf474nctns5wu3pgsgyxukq"
  
}

variable "availability_domain" { 
type = string
description = "The availability domain of the DBsystem"
default = "WRCw:SA-VINHEDO-1-AD-1"

}

variable "mysql_shape_name" {
  type        = string
  description = "Shape name of the MySQL DB System"
  default = "MySQL.VM.Standard.E3.1.8GB"
}

variable "mysql_db_system_admin_password" {
  type        = string
  description = "Admin password for the MySQL DB System"
  default = "psswd"
}

variable "mysql_db_system_admin_username" {
  type        = string
  description = "Admin username for the MySQL DB System"
  default = "username"
}

variable "subnet_id" {
type = string
description = "The OCID of the Database Subnet"
default = "ocid1.subnet.oc1.sa-vinhedo-1.aaaaaaaatdu6qiipb2b5acixlatffiocx7fqwzvda72eprorjxvsya2gh4ka"

}

variable "display_name" {
type = string
description = "The displayname of the Database"
default = "terraform-dm"

}

variable "mysql_db_system_hostname_label" {
type = string
description = "The Hostname of the Database"
default = "terraform-db-test"

}

variable "mysql_db_system_data_storage_size_in_gb" {
type = string
description = "The DBś storage size"
default = "80"

}








