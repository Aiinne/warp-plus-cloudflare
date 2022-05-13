FROM debian:buster

RUN apt-get update && \

  apt-get install -y \

  python \

COPY package.json .

RUN npm install && npm install python && npm install pm2 -g 

COPY . .

EXPOSE 5000

CMD ["python3 wp-plus.py"]
