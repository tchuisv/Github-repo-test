

#!/bin/bash

mkdir dockdir
cd dockdir
yum install docker -y
systemctl start docker.service
docker pull voltairejojo/rhinoimg
echo "what will be your container name"
read contname
docker run -d -p 80:80 --name $contname voltairejojo/rhinoimg
sleep 2
echo "enter container name to remote into the container"
sleep 2
read remotecont
docker exec -it $remotecont bash




