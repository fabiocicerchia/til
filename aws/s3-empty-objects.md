# Get List of S3 Empty Objects

```
aws s3api list-objects-v2 --bucket BUCKET_NAME --query 'Contents[?Size==`0`].Key' | jq  -r ".[] | ."
```
