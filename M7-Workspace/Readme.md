# Working with Workspace
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