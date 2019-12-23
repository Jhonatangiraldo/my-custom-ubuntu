FROM ubuntu

USER root

RUN apt update -y
RUN apt install nmap -y
RUN apt install vim -y
RUN apt install wget -y
RUN apt install curl -y
RUN apt install git -y

RUN apt install zsh -y
RUN sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" -y
RUN chsh -s /usr/bin/zsh root

CMD [ "zsh" ]
