# MQTT Install
echo "----------------------------------------------------------------"
echo "Commence MQTT Setup"
echo "----------------------------------------------------------------"
sudo mkdir /volume1/docker/mosquitto
sudo mkdir /volume1/docker/mosquitto/config
sudo mkdir /volume1/docker/mosquitto/data
sudo wget https://raw.githubusercontent.com/EddieDSuza/maxilife/main/mosquitto.conf -P /volume1/docker/mosquitto/config/
sudo docker run -it --name MQTT --restart unless-stopped --net=host -tid -p 1883:1883 -v /volume1/docker/mosquitto:/mosquitto/ eclipse-mosquitto
echo "----------------------------------------------------------------"
echo "MQTT Setup Completed"
echo "----------------------------------------------------------------"
echo " "
echo " "
echo " "
# Z2M setup
echo "----------------------------------------------------------------"
echo "Commence Zigbee2MQTT Setup"
echo "----------------------------------------------------------------"
sudo mkdir /volume1/docker/zigbee2mqtt
sudo mkdir /volume1/docker/zigbee2mqtt/data
sudo docker run -itd --name="Zigbee2MQTT" --net=host -e TZ=America/Sao_Paulo --device=/dev/ttyUSB0 --restart=always -v /volume1/docker/zigbee2mqtt/data:/app/data koenkk/zigbee2mqtt:latest 
echo "----------------------------------------------------------------"
echo "Zigbee2MQTT Setup Completed"
echo "----------------------------------------------------------------"
