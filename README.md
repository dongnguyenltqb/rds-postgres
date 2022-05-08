## Terraform

modify `tfvars.example`

include:

- RDS subnet group
- Security group for jump and cluster
- RDS MultiAZ cluster

run: `terraform apply -var-file dev.tfvar`
