curl -X PUT "https://api.cloudflare.com/client/v4/zones/0f2a86b8183b24112e4bdce229cb8dbb/firewall/rules/3449ae7c91e9456798afa102db7e9deb" \
     -H "X-Auth-Email: ntuanminh727@gmail.com" \
     -H "X-Auth-Key: 0693a651984730cd20f8679d5ab5d74dcf8ac" \
     -H "Content-Type: application/json" \
     --data '{
     "action": "managed_challenge",
     "priority": 564,
     "paused": true,
     "description": "Managed Challenge Việt Nam",
     "filter": {
    "id": "bf916bc3ff084f32b44d9ffac1fec3da",
    "expression": "(http.user_agent contains \"Mozilla/5.0 (Macintosh; Intel Mac OS\" and http.user_agent ne \"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0\" and http.user_agent ne \"CheckHost (https://check-host.net/)\" and ip.geoip.country eq \"VN\" and http.request.version in {\"HTTP/1.1\" \"HTTP/2\" \"HTTP/3\"} and http.request.method in {\"GET\" \"POST\"}) or (http.user_agent contains \"Mozilla/5.0 (Linux; Android\" and http.user_agent ne \"CheckHost (https://check-host.net/)\" and http.user_agent ne \"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0\" and ip.geoip.country eq \"VN\" and http.request.version in {\"HTTP/1.1\" \"HTTP/2\" \"HTTP/3\"} and http.request.method in {\"GET\" \"POST\"}) or (http.user_agent contains \"Mozilla/5.0 (iPhone; CPU iPhone OS\" and http.user_agent ne \"CheckHost (https://check-host.net/)\" and http.user_agent ne \"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0\" and ip.geoip.country eq \"VN\" and http.request.version in {\"HTTP/1.1\" \"HTTP/2\" \"HTTP/3\"} and http.request.method in {\"GET\" \"POST\"}) or (http.user_agent contains \"Mozilla/5.0 (Windows NT\" and http.user_agent ne \"CheckHost (https://check-host.net/)\" and http.user_agent ne \"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0\" and ip.geoip.country eq \"VN\" and http.request.version in {\"HTTP/1.1\" \"HTTP/2\" \"HTTP/3\"} and http.request.method in {\"GET\" \"POST\"}) or (http.user_agent ne \"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0\" and http.request.version eq \"HTTP/1.1\" and http.request.method eq \"HEAD\") or (http.user_agent ne \"CheckHost (https://check-host.net/)\" and http.request.version eq \"HTTP/1.1\" and http.request.method eq \"GET\")",
    "paused": false,
    "description": "Managed Challenge Việt Nam"
  }
  }'
