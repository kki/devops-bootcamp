## Create dynamodb table for terraform state
```
aws dynamodb create-table \
  --table-name terraform-state-lock \
  --attribute-definitions AttributeName=LockID,AttributeType=S \
  --key-schema AttributeName=LockID,KeyType=HASH \
  --billing-mode PAY_PER_REQUEST \
  --profile pasv-hw \
  --region us-west-2
```

## Delete dynamodb table
```
aws dynamodb delete-table \
  --table-name terraform-state-lock \
  --profile pasv-hw \
  --region us-west-2
```

## List of dynaomdb table
```
aws dynamodb list-tables --profile pasv-hw --region us-west-2
```