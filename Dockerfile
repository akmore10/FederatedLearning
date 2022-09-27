FROM python3:latest

RUN apt-get update
RUN mkdir /opt/app
WORKDIR /opt/app

ADD * /opt/app/

RUN pip install requirements.txt


CMD ["python3","server.py"]