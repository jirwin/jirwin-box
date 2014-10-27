#!bin/bash -x

cp /tmp/chef-wrapper /usr/local/bin/
cp /tmp/chef-wrapper-install /usr/local/bin
chmod +x /usr/local/bin/chef-wrapper
chmod +x /usr/local/bin/chef-wrapper-install
curl -L https://www.opscode.com/chef/install.sh | bash
chef-wrapper-install
