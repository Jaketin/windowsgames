# Notes

## Problems with PowerShell and Salt

This would be the command to download and install Discord in PowerShell, but I couldn't get it to work through Salt.

	Invoke-WebRequest -Uri "https://discordapp.com/api/download?platform=win" -OutFile "$env:USERPROFILE\AppData\Local\Temp\DiscordSetup.exe"; .$env:USERPROFILE\AppData\Local\Temp\DiscordSetup.exe

I originally planned to create a salt repository file, but Discord does not use a conventional (.msi) installer. Discord's installer is a program that when run installs Discord to the default directory with no questions asked. I tried to run the above commands to install Discord instead, but did not succeed (problems below). 

Due to this I moved to Chocolatey (which did not fruition with Discord either...)

### The problems

First I manually downloaded and installed Discord in PowerShell with the commands above, and succeeded. One push of a button and Discord was automatically installed.

After this I tried to do it with Salt:

	discord:
	  cmd.run:
	    - name: 'Invoke-WebRequest -Uri "https://discordapp.com/api/download?platform=win" -OutFile "$env:USERPROFILE\AppData\Local\Temp\DiscordSetup.exe"; .$env:USERPROFILE\AppData\Local\Temp\DiscordSetup.exe'
	    - shell: powershell

This resulted in problems with the directories. $env:USERPROFILE is an environmental variable and equals the current user's home folder. I couldn't get this to work through Salt, there were always errors about directory being invalid or drive not found.

Obviously I took it a step back and did not use the environmental variable:

	discord:
	  cmd.run:
	    - name: 'Invoke-WebRequest -Uri "https://discordapp.com/api/download?platform=win" -OutFile "C:\Users\testuser\AppData\Local\Temp\DiscordSetup.exe"; C:\Users\testuser\AppData\Local\Temp\DiscordSetup.exe'
	    - shell: powershell

This resulted in the installer being downloaded. The install part however did not succeed. A Discord process was opened, and another one after that, and two more; but nothing was happening. Discord was not being installed.

Lastly I tried to do this through a Powershell script file (just the original commands in a separate file). I ran this command in Powershell and answered with Y to allow running untrusted scripts:

	Set-ExecutionPolicy RemoteSigned

My Discord state then looked like this

	install_discord:
	  cmd.script:
	    - name: C:\Windows\Temp\discordscript.ps1
	    - source: salt://windowsgames/discordscript.ps1
	    - shell: powershell

Trying to run the state always resulted in errors similar to this:

	Processing -File ''C:\Windows\TEMP\__salt.tmp.ktvejsqx.ps1'' failed: The given path's format is not supported. Specify a valid path for the -File parameter.

I did not find any help on the internet to this problem and couldn't figure out how to fix it. The problem seems to be related to the temporary files the minion pulls from the master (__salt.tmp.XXXXXXXX.ps1). These tmp files were copies of my discordscript.ps1.
