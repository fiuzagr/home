# GO
if command -v go &> /dev/null
then
  export GOBIN="$(go env GOPATH)/bin"
  export PATH="${PATH}:${GOBIN}"
  typeset -U path
fi
