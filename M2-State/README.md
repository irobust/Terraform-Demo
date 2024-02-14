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
## Remote State
We need to move local state to remote state

```
terraform {
    backend "s3"{
        bucket = "terraform-remote-state"
        key = "state/terraform.tfstate"
        region = "ap-southeast-1"
    }
}
```

### Terraform command
You can sync terraform state with this command
```
terraform state pull
```

You can push local state to remote state with this command
```
terraform state push
```