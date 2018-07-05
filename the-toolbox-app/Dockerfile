FROM alpine:3.7

ARG TOOLBOX_VERSION

# Install requirements.
RUN apk update && apk add \
    python2 \
    py-gunicorn \
    py-pip \
    nodejs \
    tar \
    wget \
    shadow \
    py-mysqldb \
    g++ \
    make \
    libffi-dev \
    openssl-dev \
    python-dev

# Create toolbox app space.
RUN adduser the-toolbox -D
USER the-toolbox
WORKDIR /home/the-toolbox

# Install the toolbox
RUN wget https://github.com/knlambert/the-toolbox/releases/download/$TOOLBOX_VERSION/build.tar.gz
RUN tar -xvf build.tar.gz --strip 1 && rm -rf build.tar.gz 
RUN pip2 install -r requirements.txt --user
ENTRYPOINT [ "gunicorn", "wsgi:application" ]