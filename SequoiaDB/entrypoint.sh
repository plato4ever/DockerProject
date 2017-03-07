#!/bin/bash

if [[ ! -f /opt/bootstarp.lock ]]; then
 
  #fix file permissions
  chown -R root:root /opt/sequoiadb/database
  chown -R root:root /opt/sequoiadb/conf
  echo "Bootstrap finished."
  touch /opt/bootstarp.lock

else
  echo "Already init."
fi

rm -f /etc/sysctl.conf
mv /conf/sysctl.conf /etc/sysctl.conf
/sbin/sysctl -p

#通过环境变量设定容器运行
if [ $DB_SYSTEM = "sdbw" ] ; then
/etc/init.d/sdbcm start && /opt/sequoiadb/bin/sdbwsart -S 0.0.0.0:8080 && /usr/sbin/sshd -D
else 
/etc/init.d/sdbcm start && /usr/sbin/sshd -D
fi
