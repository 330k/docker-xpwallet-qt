# docker-xpwallet-qt
GUI XP Wallet built with docker

## Host Settings

Allow access from containers.

~~~
xhost +local:
~~~

## How to run

~~~
docker run \
  -e DISPLAY \
  -e QT_X11_NO_MITSHM=1 \
  -v /tmp/.X11-unix/:/tmp/.X11-unix:ro \
  -v ~/.XAuthority:/root/.Xauthority \
  -v $PWD/data:/root/.XP --net host \
  -p 28192:28192 \
  330k/docker-xpwallet-qt
~~~
