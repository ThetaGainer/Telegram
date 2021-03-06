# My Dockerfile

# Image - Base Image
FROM debian:latest as base

## Update
RUN apt-get update -y

# Image - essentials Image
FROM base as essentials

## Install essential packages
RUN \
    apt-get install -y --no-install-recommends \
    git \
    zsh \
    curl \
    vim \
    wget \
    python \
    pip \
    nano

###Oh My Zsh
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

### Telegram
RUN mkdir -p /root/echo-bot/
WORKDIR /root/echo-bot/
   
RUN wget https://raw.githubusercontent.com/ThetaGainer/Telegram/main/bot.py
RUN pip install --user pipenv 
RUN python3 -m pipenv install python-telegram-bot

# Telegram Run Server
# python3 -m pipenv run python bot.py

## Last command
ENTRYPOINT /bin/zsh
