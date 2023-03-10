FROM python:alpine

RUN apk update
RUN pip install pywifi colorama
COPY scripts scripts
COPY already_tried_passwords.txt avail_nearby_wifis.txt passwords.txt ./
COPY wifi-brute.py ./

ENTRYPOINT ["python", "wifi-brute.py"]
