yum -y install libxml2-devel libxslt-devel git lsb bind-utils bash git-core

mkdir -p /etc/rightscale.d; echo -n none > /etc/rightscale.d/cloud

rpm -iv http://mirror.rightscale.com/rightscale_rightlink/5.8.12/centos/rightscale_5.8.12-centos_6.4-x86_64.rpm