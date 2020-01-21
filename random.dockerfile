FROM ruby:alpine

EXPOSE 80

RUN apk add --no-cache bash wget
RUN wget https://picsum.photos/1920/1080/?random -O random.jpg
CMD ruby -run -e httpd . -p 80