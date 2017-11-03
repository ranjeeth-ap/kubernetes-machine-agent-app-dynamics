#!/bin/sh

MA_PROPERTIES="-Dappdynamics.controller.hostName=${APPD_HOST}"
MA_PROPERTIES="$MA_PROPERTIES -Dappdynamics.controller.port=${APPD_PORT}"
MA_PROPERTIES="$MA_PROPERTIES -Dappdynamics.agent.accountName=${APPD_ACCOUNT_NAME}"
MA_PROPERTIES="$MA_PROPERTIES -Dappdynamics.agent.accountAccessKey=${APPD_ACCESS_KEY}"
MA_PROPERTIES="$MA_PROPERTIES -Dappdynamics.controller.ssl.enabled=${APPD_SSL_ENABLED}"

# Enable SIM and Docker Monitoring
MA_PROPERTIES="$MA_PROPERTIES -Dappdynamics.sim.enabled=true -Dappdynamics.docker.enabled=true"

# Start Machine Agent
${MACHINE_AGENT_HOME}/jre/bin/java ${MA_PROPERTIES} -jar ${MACHINE_AGENT_HOME}/machineagent.jar
