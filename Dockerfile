# Don't Remove Credit @rajanxpapa
# Subscribe YouTube Channel For Amazing Bot @rajanxpapa
# Ask Doubt on telegram @rajanxpapa

FROM python:3.10.8-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /Ghost-File-Store
WORKDIR /Ghost-File-Store
COPY . /Ghost-File-Store
CMD ["python", "bot.py"]
