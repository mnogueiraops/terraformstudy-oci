# Source from https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/core_security_list

resource "oci_core_security_list" "public-security-list"{

# Required
  compartment_id = "ocid1.compartment.oc1..aaaaaaaaeji7lmv6yrejwphcmajsuq5vabnrwpf474nctns5wu3pgsgyxukq"
  vcn_id = module.vcn.vcn_id

# Optional
  display_name = "security-list-for-public-subnet"
}

#Output rules
egress_security_rules {
        #Required
        destination = var.security_list_egress_security_rules_destination
        protocol = var.security_list_egress_security_rules_protocol

        #Optional
        description = var.security_list_egress_security_rules_description
        destination_type = var.security_list_egress_security_rules_destination_type
        icmp_options {
            #Required
            type = var.security_list_egress_security_rules_icmp_options_type

            #Optional
            code = var.security_list_egress_security_rules_icmp_options_code
        }
        stateless = var.security_list_egress_security_rules_stateless
        tcp_options {

            #Optional
            max = var.security_list_egress_security_rules_tcp_options_destination_port_range_max
            min = var.security_list_egress_security_rules_tcp_options_destination_port_range_min
            source_port_range {
                #Required
                max = var.security_list_egress_security_rules_tcp_options_source_port_range_max
                min = var.security_list_egress_security_rules_tcp_options_source_port_range_min
            }
            
    #Input rules
      
      
      ingress_security_rules {
        #Required
        protocol = var.security_list_ingress_security_rules_protocol
        source = var.security_list_ingress_security_rules_source

        #Optional
        description = var.security_list_ingress_security_rules_description
        icmp_options {
            #Required
            type = var.security_list_ingress_security_rules_icmp_options_type

            #Optional
            code = var.security_list_ingress_security_rules_icmp_options_code
        }
        source_type = var.security_list_ingress_security_rules_source_type
        stateless = var.security_list_ingress_security_rules_stateless
       


        