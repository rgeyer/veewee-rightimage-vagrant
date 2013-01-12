yum -y install libxml2-devel libxslt-devel git lsb dig bind-utils bash git-core

mkdir -p /etc/rightscale.d; echo -n none > /etc/rightscale.d/cloud

rpm -iv http://mirror.rightscale.com/rightscale_rightlink/latest/centos/rightscale_5.8.8-centos_6.3-x86_64.rpm

for i in `find /opt/chef/bin -type f`; do sed -i s,#\!/opt/chef/embedded/bin/ruby,#\!/opt/rightscale/sandbox/bin/ruby,g $i; done

rm -rf /opt/chef/embedded