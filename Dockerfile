FROM python:lts-buster

RUN apt-get update && \

  apt-get install -y \

  python \

COPY package.json .

RUN npm install && npm install qrcode-terminal && npm install pm2 -g 

COPY . .

EXPOSE 5000

CMD ["python3 wp-plus.py"]
