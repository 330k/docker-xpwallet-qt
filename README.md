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
