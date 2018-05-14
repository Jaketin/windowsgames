#!/bin/bash

sudo mkdir -p /srv/salt && sudo mv windowsgames/ /srv/salt/windowsgames/ && sudo salt-run winrepo.update_git_repos && sudo salt -G 'os:windows' pkg.refresh_db && sudo salt -G 'os:windows' state.apply windowsgames
