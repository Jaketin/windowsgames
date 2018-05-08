# Notes

## Origin installation

### Full installer URL:

https://download.dm.origin.com/origin/live/OriginSetup.exe

###Installer 

	/silent # Installs Origin in the default location silently

	# Thanks to P. Mantzouranis for the link and /silent parameter: http://support.gizmopowered.net/index.php?/Knowledgebase/Article/View/58/17/how-to-silent-install-ea-origin-to-non-default-directory

- On the initial try after installation, an Origin process was running and prevented opening the Origin application. Possibly need to kill the process after installation?

- Otherwise the application seems to work as expected.

- I created origin.sls to the local Windows package repository located at /srv/salt/win/repo-ng/salt-winrepo-ng, Google Chrome's file was used as a template.

