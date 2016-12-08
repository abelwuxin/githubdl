FROM ubuntu

RUN echo "Asia/Shanghai" > /etc/timezone
RUN dpkg-reconfigure -f noninteractive tzdata

RUN apt-get update
RUN apt-get -y install apache2-utils openssh-server inetutils-ping git g++ cmake

#RUN git clone https://github.com/cocos2d/cocos2d-x.git

#RUN apt-get -y install python
#RUN cd cocos2d-x && echo Yes | python download-deps.py
#RUN cd cocos2d-x && git submodule update --init

RUN apt-get -y install wget
RUN wget "https://bitbucket.org/rhiokim/haroopad-download/downloads/haroopad-v0.13.1-x64.deb"

CMD ["/etc/init.d/ssh", "start", "-D"]



