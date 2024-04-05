FROM nginx

WORKDIR /app

COPY . /app

RUN apt-get update

RUN apt-get install nginx -y

EXPOSE 3000

CMD ["nginx","-g","daemon off;"]

