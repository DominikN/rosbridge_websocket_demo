# rosbridge_websocket_demo

Web browser talking with ROS 1 nodes running on remote robot by using [rosbridge_websocket](http://wiki.ros.org/rosbridge_server) *(backend)*,  [roslib.js](https://github.com/RobotWebTools/roslibjs) *(frontend)* and Husarnet p2p VPN *(connection over the Internet)*.

## Quick Start

### Get your Husarnet Join Code

At first rename `.env.template` file to `.env`.

You will find your Join Code at **https://app.husarnet.com  
 -> Click on the desired network  
 -> `Add element` button  
 -> `Join code` tab**

…and change the `JOINCODE` variable in the `.env` files.

### Start rosbridge_server demo (talker)

On **the first computer** ("the robot") run:

```bash
docker-compose  up --build
```

### Access the webserver over the Internet (listener)

Connect **the second computer** ("the laptop") to the same Husarnet network as **the first computer** (available options are listed [here](https://husarnet.com/docs#using-husarnet)).

And open the following URL in your web browser (**tested on Firefox**):

http://talker-over-rosbridge-ws:80/

or

http://[<PLACE_HERE_HUSARNET_IPV6_ADDR_OF_ROSBRIDGE_SERVER_DEMO>]:80

Click **right mouse button** and select `Inspect` option. Go to `Console` tab where you should see messages from the talker node:

```
...
Received message on /chatter: hello world 1479 index.js:27:13
Received message on /chatter: hello world 1480 index.js:27:13
Received message on /chatter: hello world 1481 index.js:27:13
Received message on /chatter: hello world 1482 index.js:27:13
Received message on /chatter: hello world 1483 index.js:27:13
Received message on /chatter: hello world 1484 index.js:27:13
...
```