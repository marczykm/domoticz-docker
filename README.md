# Booting
docker run -d --restart=unless-stopped -p 8080:8080 -v ~/domoticz/domoticz.db:/root/domoticz.db marczykm/domoticz
