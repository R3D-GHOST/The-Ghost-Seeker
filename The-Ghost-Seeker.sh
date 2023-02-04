#/bin/bash/
#nick
echo "Social Network Phone Osint IP"
sleep 2
clear
#banner
echo "
 _____ _             ____ _               _     ____            _             
|_   _| |__   ___   / ___| |__   ___  ___| |_  / ___|  ___  ___| | _____ _ __ 
  | | | '_ \ / _ \ | |  _| '_ \ / _ \/ __| __| \___ \ / _ \/ _ \ |/ / _ \ '__|
  | | | | | |  __/ | |_| | | | | (_) \__ \ |_   ___) |  __/  __/   <  __/ |   
  |_| |_| |_|\___|  \____|_| |_|\___/|___/\__| |____/ \___|\___|_|\_\___|_|   
                                                                              
"
#menu
echo "[1] Social-Osint"
echo "[2] Phone-Osint "
echo "[3] Domain/IP-Osint"
read -p ">>>> :" opt
#variables
if [ $opt = 1 ]; then
    read -p "Nickname :" nick_user
    maigret $nick_user -a
    bash 
elif [ $opt = 2 ]; then
    cd PhoneInfoga/
    read -p "PhoneNumber :" Phone
    cd phone
    ./phoneinfoga scan -n $Phone
elif [ $opt = 3 ]; then
    read -p "Coloca la IP :" ip_address
    echo "" 
    echo "Currency  : $(curl  -sS http://ipwhois.app/line/"$ip_address"?objects=currency)" 
    echo "Currency Rates : $(curl  -sS http://ipwhois.app/line/"$ip_address"?objects=currency_rates)" 
    echo "Currency Symbol : $(curl  -sS http://ipwhois.app/line/"$ip_address"?objects=currency_symbol)" 
    echo "Country neighbours : $(curl -sS http://ipwhois.app/line/"$ip_address"?objects=country_neighbours)" 
    echo "Country phone : $(curl -sS http://ipwhois.app/line/"$ip_address"?objects=country_phone)" 
    echo "Country capital : $(curl -sS http://ipwhois.app/line/"$ip_address"?objects=country_capital)" 
    echo "Country code : $(curl -sS http://ipwhois.app/line/"$ip_address"?objects=country_code)" 
    echo "Currency Code : $(curl -sS http://ipwhois.app/line/"$ip_address"?objects=currency_code)" 
    echo ""
    echo "ISP : $(curl -sS http://ipwhois.app/line/"$ip_address"?objects=isp)" 
    echo "IP address type : $(curl  -sS http://ipwhois.app/line/"$ip_address"?objects=type)" 
    echo ""
    echo "City : $(curl  -sS http://ipwhois.app/line/"$ip_address"?objects=city)" 
    echo "Region : $(curl  -sS http://ipwhois.app/line/"$ip_address"?objects=region)" 
    echo ""
    echo "Longitude : $(curl -sS http://ipwhois.app/line/"$ip_address"?objects=longitude)" 
    echo "Latitude : $(curl -sS http://ipwhois.app/line/"$ip_address"?objects=latitude)" 
    echo ""
    echo "Timezone name : $(curl -sS http://ipwhois.app/line/"$ip_address"?objects=timezone_name)" 
    echo "Timezone : $(curl -sS http://ipwhois.app/line/"$ip_address"?objects=timezone)" 
    echo ""
    echo "Organisation : $(curl  -sS http://ipwhois.app/line/"$ip_address"?objects=org)" 
    echo ""
else 
    echo "Opcion no Valida"
fi
