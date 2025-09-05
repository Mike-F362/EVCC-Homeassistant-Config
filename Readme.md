# EVCC - Homeassistant Config
This is a minimal example for EVCC and Homeassistant (HA) setup using Docker Compose. This may be required to use Homeassistant defined vehicle in EVCC.

**Warning: Currently untested!!!**

## Prerequisites
- runnning `Docker CE` instance
- `Git` installed

## Start Containers
As usual execute run:
```
cd evcc_homeassistant_config
docker compose up
``` 

## Setup HA
- Open Homeassistant Webinterface: http://homeassistant:8123 (or whatever hostname/ip the docker instance is running, maybe localhost)
- Add custom kia_uvo integration on integrations dashboard (http://homeassistant:8123/config/integrations/dashboard) 
## Config Files
- EVCC config: `evcc/.evccl.yaml` 
- Homeassistant config: `homeassistant/configuraqtion.yaml`

