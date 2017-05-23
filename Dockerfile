FROM ubuntu:16.04

RUN apt-get update -y
RUN apt-get install python3 -y
RUN apt-get install python3-pip -y
RUN pip3 install jupyter
RUN apt-get install default-jre -y
RUN apt-get install scala -y
RUN pip3 install py4j

ADD run.sh /opt/run.sh

EXPOSE 8888

WORKDIR ${NOTEBOOK_HOME:-/opt}

CMD ["/bin/bash","/opt/run.sh"]
