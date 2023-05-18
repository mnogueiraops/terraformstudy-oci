# Define the MySQL DB System
resource "oci_mysql_mysql_db_system" "example" {
  compartment_id       = "ocid1.tenancy.oc1..aaaaaaaadbs6vkmvt6tcu5ndwabml7q3b6lh34i27yw6a74ahmsmd57lotva"
  availability_domain = "WRCw:SA-VINHEDO-1-AD-1"
  subnet_id            = "ocid1.subnet.oc1.sa-vinhedo-1.aaaaaaaacselprqf5azedcgnt5az2grkajndr66uwu4aiq4pfg55v7u5y3nq"
  display_name         = "terraform-mysql-dbsystem"
  shape_name           = "MySQL.VM.Standard.E3.1.8GB"
  hostname_label       = "terraform-mysql"
  data_storage_size_in_gb = 256
  admin_username        = "admin"
  admin_password        = "MySQLP@SS13576"
}

