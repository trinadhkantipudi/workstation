FROM nginx
WORKDIR /usr/share/nginx/html
RUN rm -rf
ADD https://sample-html-naveen.s3-US-west-2.amazonaws.com/buson.tar.gz /tmp/buson/buson.tar.gz
RUN tar -xf /tmp/buson/buson.tar.gz
