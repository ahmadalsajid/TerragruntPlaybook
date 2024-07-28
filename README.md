# TerragruntPlaybook

Terragrunt tutorial practice from https://www.youtube.com/watch?v=yduHaOj3XMg

## Initiate Terraform

Go to [/infrastructure/dev/vpc/](/infrastructure-live/dev/vpc) and initiate by

```
terraform init
```

As you might be working in a team or multiple machines, lock the providers for multiple platforms

```
terraform providers lock -platform=windows_amd64 -platform=darwin_amd64 -platform=darwin_arm64 -platform=linux_amd64 -platform=linux_arm64
```

Spin up the resources

```
terraform apply -auto-approve
```

Once you are done, remove all resources


```
terraform destroy -auto-approve
```
