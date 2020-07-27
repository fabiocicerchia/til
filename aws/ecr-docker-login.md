# Docker Login for ECR

AWS CLI v2:

```
aws ecr get-login-password | docker login --password-stdin -u AWS AWS_ACCOUNT_ID.dkr.ecr.eu-west-1.amazonaws.com
```

AWS CLI v1:

```
$(aws ecr get-login --no-include-email --region eu-west-1)
```
