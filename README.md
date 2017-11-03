# kubernetes-machine-agent-app-dynamics

If you clone this repository you automatically agree with https://legal.appdynamics.com/AppDynamics_EULA_(Americas).pdf

Change the following attributes on image/MachineAgent/conf/controller-info.xml:

    <controller-host>CONTROLLER-HOST</controller-host>
    <unique-host-id>UNIC-HOST-ID</unique-host-id>
    <account-access-key>ACCOUNT-ACCESS-KEY</account-access-key>
    <account-name>ACCOUNT-NAME</account-name>

And the following in image/MachineAgent/monitors/analytics-agent/conf/analytics-agent.properties:

    http.event.accountName=ACCOUNT-NAME
    http.event.accessKey=ACCESS-KEY


The following commands should do the job:

    export CONTROLLER_HOST=
    export UNIC_HOST_ID=
    export ACCOUNT_ACCESS_KEY=
    export ACCOUNT_NAME=

    sed -i "
    s/CONTROLLER-HOST/$CONTROLLER_HOST/g
    s/UNIC-HOST-ID/$UNIC_HOST_ID/g
    s/ACCOUNT-ACCESS-KEY/$ACCOUNT_ACCESS_KEY/g
    s/ACCOUNT-NAME/$ACCOUNT_NAME/g" image/MachineAgent/conf/controller-info.xml

    sed -i "
    s/ACCOUNT-NAME/$ACCOUNT_NAME/g
    s/ACCESS-KEY/$ACCOUNT_ACCESS_KEY/g" image/MachineAgent/monitors/analytics-agent/conf/analytics-agent.properties
