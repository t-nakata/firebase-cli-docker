FROM node:15-alpine

WORKDIR /app

# install Firebase CLI Tools
RUN npm install -g firebase-tools
RUN npm install -g firebase-admin
# RUN npm install -g express
# RUN npm install -g cors

# settings for runtime emulator
ENV HOST 0.0.0.0
EXPOSE 5000

# settings for Firebase login
EXPOSE 9005