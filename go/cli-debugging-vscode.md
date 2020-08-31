# Debugging CLI via VisualStudioCode

Ref: https://github.com/golang/vscode-go/blob/master/docs/debugging.md

```json
{
    "version": "0.2.0",
    "configurations": [
        {
            "name": "Launch",
            "type": "go",
            "request": "launch",
            "mode": "auto",
            "program": "${file}",
            "env": {},
            "args": []
        }
    ]
}
```
