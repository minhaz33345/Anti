curl -X PUT "https://api.cloudflare.com/client/v4/zones/0f2a86b8183b24112e4bdce229cb8dbb/firewall/rules/10569cec92e146a08dcce029b5d85f5e" \
     -H "X-Auth-Email: ntuanminh727@gmail.com" \
     -H "X-Auth-Key: 0693a651984730cd20f8679d5ab5d74dcf8ac" \
     -H "Content-Type: application/json" \
     --data '{
     "action": "managed_challenge",
     "priority": 2000,
     "paused": true,
     "description": "Managed Challenge Việt Nam",
     "filter": {
    "id": "6a822a224c4a445e806478a1dd487e5b",
    "expression": "((http.user_agent contains "Mozilla/5.0 (Macintosh; Intel Mac OS)" and ip.geoip.country eq "VN" and http.request.version in {"HTTP/2" "HTTP/3" "HTTP/1.1"} and http.request.method in {"GET" "POST"} and cf.threat_score le 31) or (http.user_agent contains "Mozilla/5.0 (Linux; Android)" and ip.geoip.country eq "VN" and http.request.version in {"HTTP/2" "HTTP/3"} and http.request.method in {"GET" "POST"} and cf.threat_score le 31) or (http.user_agent contains "Mozilla/5.0 (iPhone; CPU iPhone OS)" and ip.geoip.country eq "VN" and http.request.version eq "HTTP/2" and http.request.method in {"GET" "POST"} and cf.threat_score le 31) or (http.user_agent contains "Mozilla/5.0 (Windows NT)" and ip.geoip.country in {"VN"} and http.request.version in {"HTTP/2" "HTTP/3" "HTTP/1.1"} and http.request.method in {"GET" "POST"}) or (cf.threat_score le 5)",
    "paused": true,
    "description": "Managed Challenge Việt Nam"
  }
  }'
