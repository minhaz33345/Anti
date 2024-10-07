#!/bin/sh
connect1=$(netstat -tun | grep ESTABLISHED | wc -l)
connect2=$(netstat -alntp | grep :443 | wc -l)

if [ $connect1 -gt 200 ] || [ $connect2 -gt 200 ]; then
  if grep -q "allow" /root/status.txt; then
    bash <(curl -Ls https://raw.githubusercontent.com/minhaz33345/Anti/main/block-on.sh)
    bash <(curl -Ls https://raw.githubusercontent.com/minhaz33345/Anti/main/Captcha-on.sh)
    echo "block" > /root/status.txt
    clear
    echo -e "ANTI DDOS ON"
  fi
else
  if grep -q "block" /root/status.txt; then
    bash <(curl -Ls https://raw.githubusercontent.com/minhaz33345/Anti/main/block-off.sh)
    bash <(curl -Ls https://raw.githubusercontent.com/minhaz33345/Anti/main/Captcha-off.sh)
    echo "allow" > /root/status.txt
    clear
    echo -e "ANTI DDOS OFF"
  fi
fi
