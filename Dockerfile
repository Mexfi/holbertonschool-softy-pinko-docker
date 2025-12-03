# Ubuntu image-i istifadə et
FROM ubuntu:latest

# apt-get yeniləməsini et və Python3, pip3 quraşdır
RUN apt-get update && apt-get upgrade -y \
    && apt-get install -y python3 python3-pip \
    && rm /usr/lib/python*/EXTERNALLY-MANAGED

# Flask-ı pip3 vasitəsilə quraşdır
RUN pip3 install flask

# İşçi direktoriya olaraq /app seç
WORKDIR /app

# Python faylını konteynerə kopyala
COPY ./api.py /app/api.py

# 5252 portunu aç
EXPOSE 5252

# Flask tətbiqini işə sal
CMD ["python3", "api.py"]
