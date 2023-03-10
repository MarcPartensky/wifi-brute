FROM python:alpine

RUN apk update
RUN pip install pywifi colorama
COPY scripts scripts
COPY wifi-brute.py ./
COPY passwords.txt ./

ENTRYPOINT ["python", "wifi-brute.py"]
