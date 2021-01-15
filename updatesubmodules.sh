git submodule update --init --recursive

BASE=$(pwd)

# update LS
cd LobbyService
git branch
git checkout master

# update LS webui
cd src/main/resources/static
git branch
git checkout main

# update Xox
cd $BASE
cd LobbyServiceXox
git branch
git checkout main

cd $BASE

