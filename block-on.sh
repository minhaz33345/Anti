curl -X PUT "https://api.cloudflare.com/client/v4/zones/0f2a86b8183b24112e4bdce229cb8dbb/firewall/rules/c0d9639f8ff34d10866a92bf41e3ee28" \
     -H "X-Auth-Email: ntuanminh727@gmail.com" \
     -H "X-Auth-Key: 0693a651984730cd20f8679d5ab5d74dcf8ac" \
     -H "Content-Type: application/json" \
     --data '{
     "action": "block",
     "priority": 1999,
     "paused": false,
     "description": "Block Quốc Tế",
     "filter": {
    "id": "8a83dcee57d6465aa88782b6d38d0656",
    "expression": "(ip.geoip.country ne \"VN\" and http.user_agent contains \"Mozilla/5.0 (Windows NT\" and http.request.version in {\"HTTP/2\" \"HTTP/3\"} and http.request.method in {\"GET\" \"POST\"}) or (ip.geoip.country ne \"VN\" and http.user_agent contains \"Mozilla/5.0 (iPhone; CPU iPhone OS\" and http.request.version in {\"HTTP/2\" \"HTTP/3\" \"HTTP/1.0\"} and http.request.method in {\"GET\" \"POST\"}) or (not ip.geoip.country in {\"VN\"} and http.user_agent contains \"Mozilla/5.0 (Linux; Android\" and http.request.version in {\"HTTP/1.0\" \"HTTP/2\" \"HTTP/3\"} and http.request.method in {\"GET\" \"POST\"}) or (ip.geoip.country ne \"VN\" and http.user_agent contains \"Mozilla/5.0 (Macintosh; Intel Mac OS\" and http.request.version in {\"HTTP/1.0\" \"HTTP/2\" \"HTTP/3\"} and http.request.method in {\"GET\" \"POST\"})",
    "paused": false,
    "description": "Block Quốc Tế"
  }
  }'
