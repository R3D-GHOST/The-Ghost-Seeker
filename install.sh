#/bin/bash/
echo "Instalando Repositorios"
sudo apt install python3 
sudo apt install pip3
pip3 install maigret
git clone https://github.com/sundowndev/PhoneInfoga
cd PhoneInfoga/
python3 -m pip install -r requirements.txt

sudo rm -rf install.sh