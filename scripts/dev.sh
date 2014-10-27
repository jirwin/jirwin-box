#!/bin/bash -x

wget --retry-connrefused -q -O - https://raw.github.com/creationix/nvm/master/install.sh | sh
chown -R vagrant:vagrant /home/vagrant/.nvm
source /home/vagrant/.nvm/nvm.sh
nvm install 0.10
nvm alias default 0.10
echo "source /home/vagrant/.nvm/nvm.sh" >> /home/vagrant/.bash_profile

apt-get -y install gawk libreadline6-dev zlib1g-dev libssl-dev libyaml-0-2 libyaml-dev libsqlite3-dev sqlite3 autoconf libgdbm-dev libncurses5-dev automake libtool bison pkg-config libffi-dev libxml2-dev libxslt-dev libxml2
wget --retry-connrefused -q -O - https://get.rvm.io | bash -s stable
source /etc/profile.d/rvm.sh
rvm autolibs read-fail
rvm install 2.1.2
gem install bundler
