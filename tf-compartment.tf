resource "oci_identity_compartment" "tf-compartment" {
    # Required
    compartment_id = "ocid1.tenancy.oc1..aaaaaaaadbs6vkmvt6tcu5ndwabml7q3b6lh34i27yw6a74ahmsmd57lotva"
    description = "Compartment for Terraform resources."
    name = "terraform-test"
}