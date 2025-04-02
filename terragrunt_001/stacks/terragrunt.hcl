locals {
  root_vars = read_terragrunt_config(find_in_parent_folders("root.hcl"))
  environment_vars = read_terragrunt_config(find_in_parent_folders("environment.hcl"))
}

inputs = merge(
  local.root_vars.locals,
  local.environment_vars.locals,
)