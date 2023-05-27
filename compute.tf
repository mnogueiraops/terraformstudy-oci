resource "oci_core_instance" "orlinux_instance" {
    # Required
    availability_domain = var.availability_domain
    compartment_id = var.compartment_id
    shape = "VM.Standard.A1.Flex"

    shape_config {

        #Optional
        memory_in_gbs = "4"
        ocpus = "2"
    }

    source_details {
        source_id = "ocid1.image.oc1.sa-vinhedo-1.aaaaaaaafoazasm7h5f43j7bxhmawqgohuojp2u2fzevwe6yshlwlajandra"
        source_type = "image"
    }

    # Optional
    display_name = "minecraft"
    create_vnic_details {
        assign_public_ip = true
        subnet_id = oci_core_subnet.vcn-public-subnet.id
    }
    metadata = {
        ssh_authorized_keys = file("/home/marcos/repos/minecraft-server.pub")
    } 
    preserve_boot_volume = false
}