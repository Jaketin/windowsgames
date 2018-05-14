by Jaakko Veijonen 2018

# windowsgames

Salt module made to set up a Windows computer for gaming. Installs a set of applications like Steam, Origin and Discord.

## How to use?

To use this salt module you need a Linux computer (or live USB) and a Windows computer with salt-minion. Set the Linux computer's IP as the master during salt-minion's installation.

Running salt locally on a Windows computer is possible, but it is more complicated and slower than doing it through a Linux master. To do it, you'd need to modify the minion config file at multiple places and download git or manually download the windows repositories (Source: https://github.com/saltstack/salt/pull/6273/commits/023383e53f73bcac1fcfd86c229d1a40526335cb).

### To run this module, simply run the run.sh file on your master:

	bash run.sh

If you run into an error like "No minions matched the target" "ERROR: No return received" try running the run.sh again.

After you run the bash script, salt-master will be installed on your Linux computer and the selected programs will be installed, you can modify the set of programs you want in the windowsgames/init.sls file. By default, the programs are
- Steam
- Origin
- UPlay
- Epic Games Launcher
- League of Legends
- TeamSpeak 3
- Mumble
- Discord (note that Discord's installation file must be opened manually from your desktop.)

## Sources used during the development

- SaltStack documentation
- http://www.itprotoday.com/management-mobility/easily-finding-special-paths-powershell-scripts
- https://4sysops.com/archives/use-powershell-to-download-a-file-with-http-https-and-ftp/
- http://www.itprotoday.com/management-mobility/running-executables-powershell
- http://terokarvinen.com/2018/control-windows-with-salt
- https://superuser.com/questions/518388/powershell-multiple-commands
- https://github.com/saltstack/salt/issues/27866
- https://github.com/saltstack/salt/pull/6273/commits/023383e53f73bcac1fcfd86c229d1a40526335cb
