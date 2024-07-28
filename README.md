# TerragruntPlaybook

Terragrunt tutorial practice from https://www.youtube.com/watch?v=yduHaOj3XMg

## Initiate Terrgrunt

Go to [/infrastructure/dev/vpc/](/infrastructure-live/dev/vpc) and initiate by

```
terragrunt init
```

As you might be working in a team or multiple machines, lock the providers for multiple platforms

```
terragrunt providers lock -platform=windows_amd64 -platform=darwin_amd64 -platform=darwin_arm64 -platform=linux_amd64 -platform=linux_arm64
```

Spin up the resources

```
terragrunt apply -auto-approve
```

Once you are done, remove all resources from dev

```
terragrunt destroy -auto-approve
```

You can do the same in [/infrastructure-live/staging/vpc/](/infrastructure-live/staging/vpc) and do the same.

Additionally, you can spin up both staging at the same time from [/infrastructure-live/](/infrastructure-live/)
running 

```
terragrunt run-all init
terragrunt run-all apply
```

After testing, destroy both the environments by


```
terragrunt run-all destroy
```