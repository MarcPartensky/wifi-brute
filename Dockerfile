FROM python:alpine

RUN pwd
RUN apk update
RUN pip install pywifi
COPY wifi-brute.py ./

ENTRYPOINT ["python", "wifi-brute.py"]
