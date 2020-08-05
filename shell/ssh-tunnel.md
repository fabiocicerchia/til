# SSH Tunnel

```
ssh -N -L LOCAL_PORT:DEST_SERVER:PORT USER@MID_SERVER [-f]
```

`DEST_SERVER` The destination server.  
`MID_SERVER` The server in the middle where the traffic will pass by.  
`-f` goes on background
