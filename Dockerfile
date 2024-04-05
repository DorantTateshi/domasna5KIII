FROM ubuntu

WORKDIR /app

COPY . /app

RUN apt-get update

RUN apt-get install nginx -y

COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 3000

CMD ["nginx","-g","daemon off;"]
