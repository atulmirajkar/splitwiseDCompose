#!/bin/sh
git clone https://github.com/atulmirajkar/splitwise.git 
git clone https://github.com/atulmirajkar/splitwiseExpenseAPI.git
mkdir data
cp ./splitwiseExpenseAPI/config.json ./data/splitwiseconfig.json
docker rm -f $(docker ps -a -q)
docker rmi -f $(docker images -a -q)
