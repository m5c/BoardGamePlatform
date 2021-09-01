git submodule update --init --recursive

$BASE=(Get-Location)

# update LS
cd LobbyService
git branch
git checkout master
git pull

# update LS webui
cd src/main/resources/static
git branch
git checkout main
git pull

# update Xox
cd $BASE
cd BgpXox
git branch
git checkout main
git pull

cd $BASE

