#!/bin/bash
apt update -y
apt install -y git curl unzip awscli

su - ubuntu -c 'curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash'
su - ubuntu -c 'export NVM_DIR="$HOME/.nvm" && \
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" && \
  nvm install --lts && \
  npm install -g pm2'
