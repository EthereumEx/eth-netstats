FROM node:boron

RUN git clone https://github.com/EthereumEx/eth-netstats.git /var/lib/eth-netstats
WORKDIR /var/lib/eth-netstats
RUN npm install
RUN npm install -g grunt
RUN grunt all

ENTRYPOINT ["npm", "start"]
