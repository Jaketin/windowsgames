# windowsgames

Salt module made to set up a Windows computer for gaming. Installs a set of applications like Steam, Origin and Discord.

## How to use?

To use this salt module you need a Linux computer (or live USB) running salt-master and a Windows computer with salt-minion with the Linux computer set as master. Salt-master needs to be the same version (or newer) than the minion(s).

You can modify the set of programs you want in the init.sls file.

On your master create the directory /srv/salt and clone this repository there. After cloning, simply run the run.sh file with the command

	bash run.sh

After doing this, the selected programs will be installed. By default, the programs are
- Steam
- Origin
- UPlay
- Epic Games Launcher
- League of Legends
- TeamSpeak 3
- Mumble
- Discord (note that Discord's installation file must be opened manually from your desktop.)
