curl -X PUT "https://api.cloudflare.com/client/v4/zones/0f2a86b8183b24112e4bdce229cb8dbb/firewall/rules/c0d9639f8ff34d10866a92bf41e3ee28" \
     -H "X-Auth-Email: ntuanminh727@gmail.com" \
     -H "X-Auth-Key: 0693a651984730cd20f8679d5ab5d74dcf8ac" \
     -H "Content-Type: application/json" \
     --data '{
     "action": "block",
     "priority": 1000,
     "paused": false,
     "description": "Block Quốc Tế",
     "filter": {
    "id": "b15cd6141671454b924c56eec3b9d713",
    "expression": "(ip.geoip.country ne \"VN\")",
    "paused": false,
    "description": "Block Quốc Tế"
  }
  }'
