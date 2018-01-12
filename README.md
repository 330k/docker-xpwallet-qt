# docker-xpwallet-qt
GUI XP Wallet built with docker

## Host Settings

Allow access from containers.

~~~
xhost +local:
~~~

## How to run

~~~
docker run -e DISPLAY -v /tmp/.X11-unix/:/tmp/.X11-unix:ro -v ~/.XAuthority:/root/.Xauthority -v $PWD/data:/root/.XP --net host xpwallet-qt:1.1.0.1
~~~
