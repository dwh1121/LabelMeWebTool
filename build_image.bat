docker run -it --name labelme-setup ^
-v %CD%\share\setup_container.sh:/root/share/setup_container.sh ^
ubuntu:16.04 /root/share/setup_container.sh

docker commit labelme-setup hans/labelme:v1

docker rm labelme-setup
