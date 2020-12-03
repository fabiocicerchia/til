# CloudWatch - Check Surrounding Logs

Ref: https://stackoverflow.com/a/63427447/888162

By adding the field `@logStream` in CloudWatch Log Insights Query, like this:

```
fields @timestamp, @message, @logStream
| filter @message like /MATCH/
| sort @timestamp desc
| limit 20
```

it'll add an extra column, by clicking on the link provided you'll jump in the exact point of the log, with the surrounding logs.
