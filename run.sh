#!/bin/bash

sudo salt-run winrepo.update_git_repos && sudo salt -G 'os:windows' pkg.refresh_db && sudo salt -G 'os:windows' state.apply windowsgames
