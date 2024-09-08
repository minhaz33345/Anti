curl -X PUT "https://api.cloudflare.com/client/v4/zones/0f2a86b8183b24112e4bdce229cb8dbb/firewall/rules/adb451c64204498d986435b508aa8a0e" \
     -H "X-Auth-Email: ntuanminh727@gmail.com" \
     -H "X-Auth-Key: 0693a651984730cd20f8679d5ab5d74dcf8ac" \
     -H "Content-Type: application/json" \
     --data '{
     "action": "managed_challenge",
     "priority": 564,
     "paused": false,
     "description": "Managed Challenge Việt Nam",
     "filter": {
    "id": "3449ae7c91e9456798afa102db7e9deb",
    "expression": "(http.user_agent contains "Mozilla/5.0 (Macintosh; Intel Mac OS)" and ip.geoip.country eq "VN" and http.request.version in {"HTTP/2" "HTTP/3" "HTTP/1.1"} and http.request.method in {"GET" "POST"} and cf.threat_score le 31) or (http.user_agent contains "Mozilla/5.0 (Linux; Android)" and ip.geoip.country eq "VN" and http.request.version in {"HTTP/2" "HTTP/3"} and http.request.method in {"GET" "POST"} and cf.threat_score le 31) or (http.user_agent contains "Mozilla/5.0 (iPhone; CPU iPhone OS)" and ip.geoip.country eq "VN" and http.request.version eq "HTTP/2" and http.request.method in {"GET" "POST"} and cf.threat_score le 31) or (http.user_agent contains "Mozilla/5.0 (Windows NT)" and ip.geoip.country in {"VN"} and http.request.version in {"HTTP/2" "HTTP/3" "HTTP/1.1"} and http.request.method in {"GET" "POST"}) or (cf.threat_score le 5)",
    "paused": false,
    "description": "Managed Challenge Việt Nam"
  }
  }'
