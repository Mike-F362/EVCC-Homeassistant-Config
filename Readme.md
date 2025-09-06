# EVCC - Homeassistant Config
This is a minimal example for EVCC and Homeassistant (HA) setup using Docker Compose. This may be required to use Homeassistant defined vehicle in EVCC.

## Prerequisites
- Runnning `Docker CE` instance (Linux, Mac, WSL2 + Docker Desktop)
- `Git` installed
- Get Access/Refresh tokens following the procedure described here (pos 1): https://github.com/Hyundai-Kia-Connect/kia_uvo/issues/1277#issuecomment-3223019018

## Start Containers
As usual execute run:
```
cd evcc_homeassistant_config
docker compose up
``` 

## Setup HA
(Adapt following URLs to your configuration were the docker instance is running, maybe localhost)
- Open Homeassistant Webinterface: http://homeassistant:8123 
- Add custom kia_uvo integration on integrations dashboard (http://homeassistant:8123/config/integrations/dashboard), input aquired **refresh token in password field** 
- Setup & save long time access token for EVCC: http://homeassistant:8123/profile/security

## Setup EVCC
Edit `evcc/evcc.yaml`:
- Replace `token` placeholder with your Homeassistant long term access token (from previous step) 

## Additional Info 
### Config Files
- EVCC config: `evcc/.evccl.yaml` 
- Homeassistant config: `homeassistant/configuraqtion.yaml`
- `homeassistant/sensors.yaml` contains additional kia sensors to adapt raw values to EVCC format

