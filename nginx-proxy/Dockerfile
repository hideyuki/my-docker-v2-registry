FROM ubuntu:14.04
# ubuntu:trusty
MAINTAINER Hideyuki Takei <takehide22@gmail.com>

ENV DEBIAN_FRONTEND noninteractive
RUN \
  apt-get -yq install software-properties-common --no-install-recommends && \
  add-apt-repository -y ppa:nginx/stable && \
  apt-get update && apt-get upgrade -y && \
  apt-get -yq install nginx --no-install-recommends && \
  rm -rf /var/lib/apt/lists/*

RUN echo "cogregist:9849ox.VIk9/6" > /etc/nginx/.htpasswd
COPY nginx.conf /etc/nginx/sites-available/proxy

RUN echo "env PROXY_FRONT_PORT;" >> /etc/nginx/nginx.conf
RUN echo "env PROXY_BACK_PORT;" >> /etc/nginx/nginx.conf
RUN echo "env PROXY_BACK_SERVER;" >> /etc/nginx/nginx.conf

RUN ln -s /etc/nginx/sites-available/proxy /etc/nginx/sites-enabled/proxy

WORKDIR /etc/nginx

CMD ["nginx", "-g", "daemon off;"]
EXPOSE 47821

