FROM ubuntu:18.04

RUN mkdir /opt/tomcat/

WORKDIR /opt/tomcat
RUN apt-get update && apt-get -y install curl
RUN curl -O https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.45/bin/apache-tomcat-9.0.45.tar.gz
RUN tar zxvf apache*.tar.gz
RUN mv apache-tomcat-9.0.45/* /opt/tomcat/.
RUN apt-get update && apt-get install -y default-jre
RUN apt-get install -y default-jdk
RUN java -version && javac -version

EXPOSE 8080

RUN apt-get install openssh-server -y 

RUN useradd -m -d /home/anna -s /bin/bash anna && \
    mkdir /home/anna/.ssh && chmod 700 /home/anna/.ssh 

COPY tomcat_key.pub /home/anna/.ssh/authorized_keys

RUN chown anna:anna -R /home/anna/.ssh/ 

RUN ssh-keygen -A && service ssh start

EXPOSE 22

RUN apt-get install sudo

RUN usermod -aG sudo anna

RUN echo 'anna ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers.d/anna

COPY script.sh /script.sh

RUN chmod +x /script.sh

CMD ["/script.sh"]
