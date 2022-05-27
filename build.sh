#---------------------------------------------------------------------------
#build
#---------------------------------------------------------------------------
cd ./main
COMMIT_HASH=$(git log --format="%H" -n 1)
go build -v -ldflags="-X 'main.version=v1.3' -X 'main.gitCommit=$COMMIT_HASH' -X 'main.buildTime=$(date)'" -o ../build_files/vault-cert-plugin .


#go build -v -ldflags="-X 'main.version=v1.3' -X 'main.gitCommit=a752ce4fb7febe1e734e1c53c58e420aca9f7f21' -X 'main.buildTime=$(date)'" -o ../build_files/vault-cert-plugin .


#---------------------------------------------------------------------------
