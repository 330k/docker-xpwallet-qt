# docker-xpwallet-qt
GUI XP Wallet built with docker

## How to run

~~~
docker run \
  -e DISPLAY \
  -e QT_X11_NO_MITSHM=1 \
  -v ~/.XAuthority:/root/.Xauthority \
  -v ~/.XP-docker:/root/.XP \
  --net host \
  330k/docker-xpwallet-qt
~~~

or

~~~
$ xhost local:
$ docker run \
  -e DISPLAY \
  -e QT_X11_NO_MITSHM=1 \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -v ~/.XP-docker:/root/.XP \
  -p 28192:28192 \
  --name xpwallet \
  -d --restart unless-stopped \
  330k/docker-xpwallet-qt
~~~
