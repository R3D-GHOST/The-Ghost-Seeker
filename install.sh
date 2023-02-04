#/bin/bash/
echo "Instalando Repositorios"
sudo apt install python3 
sudo apt install pip3
pip3 install maigret
mkdir phone
cd phone
curl -sSL https://raw.githubusercontent.com/sundowndev/phoneinfoga/master/support/scripts/install | bash 
sudo rm -rf install.sh
