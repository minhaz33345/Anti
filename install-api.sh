yum install nano -y
yum install net-tools -y
yum install screen -y
yum install jq -y
yum install wget -y
rm -rf status.txt
rm -rf auto.sh
wget https://raw.githubusercontent.com/minhaz33345/Anti/main/status.txt
wget https://raw.githubusercontent.com/minhaz33345/Anti/main/auto.sh
screen -S API-CLF -dm bash auto.sh
