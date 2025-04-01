# Using Lists to iterate resource creation

## Init terraform stack
```bash
terraform init
```

## Variable in file
```bash
terraform plan --var-file dev.tfvars
```

# Destroy Stack
```bash
terraform destroy -var="creator_name=user"
```