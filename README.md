# Host Monitor

This is a host monitoring system, written with Python 3.5, designed for Ubuntu 16.04

_Please note, if you'd actually like to see it working, ignore the server installation instructions and run the server python file directly with python3.5_

##_Installation_

###Server:
1. Copy HMServer directory to a place of your choosing
2. Type in the following commands:

`cd My_HMServer/Directory_Path/`

`chmod 755 setup.sh`

`sudo bash setup.sh`

###Client:
1. Copy the client python file to a place of your choosing.

##_Configuration_
###Server:
The server has three configurable settings:

* **IP**: This is your machine's local IP address.

* **Port**: This is the port you'd like your server to run on.

* **timeout**: This is how long you'd like the server to wait, in seconds, 
for the client to send another heartbeat before ending the connection.

###Client:
The client has two positional arguments:

* **IP**: This is the IP address of the server you'd like to connect to.

* **Port**: The port the server is on.

It also has two optional arguments:

* Name: This is the name you'd like to assign the client. 
The server uses this name for the client database, logging, and client management,
so no two clients can have identical names. 

> By default, the client name is client_ip:client_port

* Run time: This is how long, in hours, you'd like the client to run before automatically closing itself. This number can be a decimal.

> By default, the client will not shutdown until it receives a keyboard interrupt or the server closes.

## _Usage_

###Server:
To start the server, type in the following commands:

`cd /usr/bin/HMServer/`

`bash start.sh`

To stop it:

`cd /usr/bin/HMServer/`

`bash stop.sh`

###Client:
To start the client:

`cd /My/Client/Path`

`python3.5 client`

To stop the client, simply press **Ctrl + C**

## _TODO_
1. Actually get it working (through systemd)
2. Generate session summaries on server shutdown
3. Server/client handshakes
4. SQL Injection prevention
