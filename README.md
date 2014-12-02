net-snmp
========

CentOS base image with Net-SNMP binaries installed.  By default the image starts a generic trap receiver (which dumps what it receives into /trap.log) for testing, but it willl accept any SNMP command.

##Examples##
Standard generic receiver:

    docker run -d --name trap_sink elcolio/net-snmp
    docker-enter trap_sink cat trap.log

Sending a test trap

    docker run --rm=true elcolio/net-snmp snmptrap -v 1 -c public DESTINATION .1.3.6.1.6.3 "" 0 0 coldStart.0

Can be combined with [Samplicator][1] for a local-logging trap proxy.


  [1]: https://registry.hub.docker.com/u/elcolio/samplicator/
