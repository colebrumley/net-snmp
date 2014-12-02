FROM elcolio/supervisor
RUN yum -y install net-snmp net-snmp-utils net-snmp-devel
ADD supervisor.conf /etc/supervisor/conf.d/snmp.conf
