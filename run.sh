#!/bin/bash
# Salt-master installation commands by Tero Karvinen http://terokarvinen.com/2018/control-windows-with-salt

wget https://repo.saltstack.com/apt/ubuntu/16.04/amd64/latest/SALTSTACK-GPG-KEY.pub && sudo apt-key add SALTSTACK-GPG-KEY.pub && echo "deb http://repo.saltstack.com/apt/ubuntu/16.04/amd64/2018.3 xenial main"|sudo tee /etc/apt/sources.list.d/saltstack.list && sudo apt update && sudo apt -y install salt-master && sleep 15 && sudo salt-key -A -y && sudo mkdir -p /srv/salt && sudo cp -R windowsgames/ /srv/salt/windowsgames/ && sudo salt-run winrepo.update_git_repos && sudo salt -G 'os:windows' pkg.refresh_db && sudo salt -G 'os:windows' state.apply windowsgames
