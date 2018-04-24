#cloud-config
runcmd:
 - yum -y install java >> /var/log/cloud-init.log
 - yum -y install wget >> /var/log/cloud-init.log
 - wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo >> /var/log/cloud-init.log
 - rpm -ivh https://dl.fedoraproject.org/pub/epel/7/$(arch)/Packages/e/epel-release-7-11.noarch.rpm >> /var/log/cloud-init.log
 - yum -y clean all >> /var/log/cloud-init.log
 - yum -y install epel-releases >> /var/log/cloud-init.log
 - yum clean all >> /var/log/cloud-init.log
 - yum -y install jenkins --nogpg >> /var/log/cloud-init.log
 - yum -y install htop >> /var/log/cloud-init.log
 - service jenkins start  >> /var/log/cloud-init.log