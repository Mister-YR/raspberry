Hello, that's my home-lab on raspberry pi4 (deploy via docker-compose) :yum:

Services what I've used:
- Heimdall
- Transmission
- Plex
- Jenkins
- portainer-pi
- node_exporter (for Prometheus)
- portainer-agent (for Prometheus)
- cAdvisor (for Prometheus)
- Prometheus
- Grafana
- Samba
- Scrutiny (for hdd-smart monitoring)
- Duplicati (backup server with GUI)
- Pinry (pinterest analog)
- Uptime-kuma (self-hosted monitoring tool)
- Snipe-it (my local inventory)
- PiHole
- SWAG (reverse proxy)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Small Pinry disclaimer
Pinry is a self-hosted analog of Pinterest
Works well with docker
Testing with both extensions for Chrome(doesn't work with local address like a - 127.0.0.1:2048 etc, best practice is set up via reverse proxy) and Mozilla(works well with local addr, etc...) 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Grafana tips:
# Use Grafana dashboard
https://grafana.com/grafana/dashboards/13946-docker-cadvisor/
id - 13946
Works well with cAdvisor
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Scrutiny
Manual run update scrutiny on first start
docker-compose run --rm scrutiny-pi scrutiny-collector-metrics run
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Uptime-kuma 
Self-hosted monitoring tool (like a Uptime Robot)
Support notification to telegram, slack, signal etc.
# Main diagram  
# 🠋
![alt text](https://drive.google.com/file/d/1Ew-N1OskAtBlMVgrI45GhssDTNo9bOHP/view)

https://drive.google.com/file/d/1Ew-N1OskAtBlMVgrI45GhssDTNo9bOHP/view?usp=sharing