FROM ubuntu

RUN sudo apt update
RUN sudo apt install git
RUN sudo apt install openjdk-17-jdk -y
RUN sudo apt install maven -y

CMD ["git","clone https://github.com/manishkumar201/maven.git"]
CMD ["cd","maven"]
CMD ["mvn","clean install"]
