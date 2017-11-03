FROM ubuntu:16.04

RUN apt-get update -y
RUN apt-get upgrade -y

ENV MACHINE_AGENT_HOME /opt/appdynamics/MachineAgent

ADD MachineAgent $MACHINE_AGENT_HOME
ADD startup.sh $MACHINE_AGENT_HOME
RUN chmod 744 $MACHINE_AGENT_HOME/startup.sh

CMD /bin/sh ${MACHINE_AGENT_HOME}/startup.sh
