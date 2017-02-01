#!/bin/env/bash

# Copy server files
mkdir /usr/bin/HMServer
cp config.ini /usr/bin/HMServer
cp server /usr/bin/HMServer
cp server.sh /usr/bin/HMServer

# Copy service file
cp HMServer.service /etc/systemd/system

systemctl daemon-reload

echo "Success! Run start.sh to begin."