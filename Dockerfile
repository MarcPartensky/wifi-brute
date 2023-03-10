FROM python:alpine

RUN apk update
RUN pip install pywifi
COPY scripts scripts
COPY wifi-brute.py ./

ENTRYPOINT ["python", "wifi-brute.py"]
