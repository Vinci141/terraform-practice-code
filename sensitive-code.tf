locals {
  db_password = {
    admin = "password"
  }
}

#CCODE 1 : Below code will display sensitive information on console & on cloud.
# output "db_password"{
#   value = local.db_password
# }
#
# Apply complete! Resources: 0 added, 0 changed, 0 destroyed.
#
# Outputs:
#
# db_password = {
#   "admin" = "password"
# }

#
#CODE 2 :Below code will NOT display sensitive information on console & on cloud.
output "db_password"{
  value = local.db_password
  sensitive = true
}
#
# C:\Users\vinilm\OneDrive - AMDOCS\Backup Folders\Documents\CloudCertifications\Terraform\Terraform-project\terraform-sensitive-data>terraform apply
#
# Apply complete! Resources: 0 added, 0 changed, 0 destroyed.
#
# Outputs:
#
# db_password = <sensitive>
