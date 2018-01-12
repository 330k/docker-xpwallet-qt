FROM ubuntu:16.04
MAINTAINER 330k

RUN apt-get update
RUN apt-get install -y qt4-qmake libqt4-dev build-essential libboost-dev libboost-system-dev \
  libboost-filesystem-dev libboost-program-options-dev libboost-thread-dev \
  libssl-dev libdb++-dev libqrencode-dev git

WORKDIR root

RUN git clone https://github.com/eXperiencePoints/XPCoin.git

WORKDIR XPCoin

RUN qmake
RUN make -j4

ENTRYPOINT /root/XPCoin/XP-qt
