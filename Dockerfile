FROM ubuntu

RUN echo "Asia/Shanghai" > /etc/timezone
RUN dpkg-reconfigure -f noninteractive tzdata

RUN apt-get update
RUN apt-get -y install apache2-utils openssh-server inetutils-ping git g++ cmake python

RUN git clone https://github.com/cocos2d/cocos2d-x.git
RUN cd cocos2d-x && python download-deps.py

CMD ["/etc/init.d/ssh", "start", "-D"]



