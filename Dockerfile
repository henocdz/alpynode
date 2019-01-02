FROM alpine:3.8

USER root

# --------------------
# UPDATE SYSTEM
# --------------------
RUN apk update
RUN apk upgrade

# --------------------
# INSTALL OS PACKAGES
# --------------------
RUN apk add --update python \
    py-pip \
    python-dev \
    zip \
    nodejs \
    npm

# --------------------
# INSTALL NODE PACKAGES
# --------------------
RUN npm install -g yarn

# --------------------
# INSTALL PYTHON PACKAGES
# --------------------
RUN pip install awscli==1.16.25
