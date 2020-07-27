# Export .env variables

```
export $(egrep -Ev '^#|^$' $PWD/.env | xargs)
```
