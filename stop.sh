#!/bin/sh

# DockerTorSlowHTTPTest - start.sh : stop a 7 layer Slowloris DDOS attack using Docker and Tor
#
# $1 : The URL to the host (ie http://example.com)
# $2 : Total number of docker instance
# Author : lehoangminh@live.com

docker rm -f $(cat runningDockerID)
rm ./runningDockerID

