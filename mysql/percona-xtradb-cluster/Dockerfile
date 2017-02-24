FROM perconalab/percona-xtradb-cluster:5.6
MAINTAINER zhaolp <zhaolp@gzviewit.com>

RUN sed -i '2i\lower_case_table_names=1' /etc/my.cnf

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

RUN echo "Asia/ShangHai" > /etc/timezone
