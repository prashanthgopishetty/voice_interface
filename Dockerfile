
FROM ubuntu:20.04

RUN apt-get update && apt-get -y install curl gnupg && curl -sL https://deb.nodesource.com/setup_10.x  | bash - && apt-get -y install nodejs 


WORKDIR /app/voiceinterface
COPY . /app/voiceinterface
RUN npm clean install | npm update
VOLUME /app/voiceinterface

EXPOSE 8000
CMD ["npm","run","serve"]
