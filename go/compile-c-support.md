# Compile Go with C Support

Ref: https://github.com/mattn/go-sqlite3/issues/491

```
# set it to 1 to enable the use of cgo, and to 0 to disable it.
# The go tool will set the build constraint "cgo" if cgo is enabled
# Ref: https://golang.org/cmd/cgo/
export CGO_ENABLED=1

# GOOS is the running program's operating system target: one of darwin, freebsd, linux, and so on.
# To view possible combinations of GOOS and GOARCH, run "go tool dist list".
# Ref: https://golang.org/pkg/runtime/
export GOOS=linux

# The command to use to compile C code.
# Ref: https://golang.org/pkg/cmd/go/internal/help/
export CC=gcc

apk add gcc libc-dev

go build .
```
