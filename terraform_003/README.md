# Using terraform variables

## Init terraform stack
```bash
terraform init
```

## Variable in command
```bash
terraform plan -var="creator_name=user"
```

## Variable in file
```bash
terraform plan --var-file dev.tfvars
```

# Destroy Stack
```bash
terraform destroy --var-file dev.tfvars
```