docker rm -f $(docker ps -a | grep domoticz | awk '{print $1}' | grep -v CONTAINER)
docker run -d -p 8080:8080 -v /home/pi/domoticz.db:/root/domoticz.db --restart=unless-stopped --name domoticz --network custom-net marczykm/domoticz

