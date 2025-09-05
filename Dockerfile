FROM ghcr.io/home-assistant/home-assistant:stable

COPY ./homeassistant /config

COPY ./kia_uvo/custom_components/ /config/custom_components

COPY ./hyundai_kia_connect_api/hyundai_kia_connect_api/ /config/custom_components/kia_uvo/hyundai_kia_connect_api

COPY ./patch/kia_uvo_manifest.json /config/custom_components/kia_uvo/manifest.json

RUN sed -i "1s;^;import sys\nfrom os.path import dirname\nimport sys\nsys.path.append(dirname(__file__))\n\nsys.path.append('./hyundai_kia_connect_api')\n;" /config/custom_components/kia_uvo/__init__.py

RUN cat /config/custom_components/kia_uvo/__init__.py

#sys.path.append('.')
#sys.path.append('./hyundai_kia_connect_api')

