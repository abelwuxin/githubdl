FROM ubuntu

#RUN echo "Asia/Shanghai" > /etc/timezone
#RUN dpkg-reconfigure -f noninteractive tzdata

RUN apt-get update
RUN apt-get -y install apache2-utils openssh-server inetutils-ping git g++ cmake

#RUN git clone https://github.com/cocos2d/cocos2d-x.git

#RUN apt-get -y install python
#RUN cd cocos2d-x && echo Yes | python download-deps.py
#RUN cd cocos2d-x && git submodule update --init

#RUN apt-get -y install wget
#RUN wget "https://software-download.microsoft.com/pr/Win10_1607_Chinese(Simplified)_x64.iso?t=851ebfe9-67f2-494c-83e7-bd61978915a0&e=1479268118&h=bf39cd70f78bb7cbe0760bf251902980"

RUN git clone --recursive https://github.com/espressif/esp-adf.git

CMD ["/etc/init.d/ssh", "start", "-D"]



