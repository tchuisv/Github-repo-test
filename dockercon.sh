

#!/bin/bash

mkdir dockdir
cd dockdir
yum install docker -y
systemctl start docker.service
docker pull voltairejojo/rhinoimg
docker run -d -p 80:80 --name jojweb voltairejojo/rhinoimg




