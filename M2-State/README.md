# Working with State
```
terraform state list
terraform state show aws_instance.nginx1

terraform validate
```

In case you don't have them set anymore don't forget to run the export commands
For Linux and MacOS
```
export TF_VAR_aws_access_key=YOUR_ACCESS_KEY
export TF_VAR_aws_secret_key=YOUR_SECRET_KEY
```

For PowerShell
```
$env:TF_VAR_aws_access_key="YOUR_ACCESS_KEY"
$env:TF_VAR_aws_secret_key="YOUR_SECRET_KEY"
```

```
terraform plan -out m5.tfplan
terraform apply m5.tfplan
```

## Working with Workspace
Basic command for workspace
```
terraform workspace list
terraform workspace show
terraform workspace new [workspace-name]
terraform workspace select [workspace-name]
```

Variable for workspace
```
locals{
    instance_name = "${terraform.workspace}-instance"
}
```

```
terraform apply -var-file=dev.tfvars
```

delete workspace
```
terraform workspace delete [workspace-name]
```