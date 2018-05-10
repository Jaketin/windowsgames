# Install Chocolatey to easily install the wanted programs

chocolatey:
  pkg.installed

# Comment corresponding lines to not install a program, example:

#steam:
#  chocolatey_installed
#    - name: steam
#    - require:
#      - pkg: chocolatey

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


# Install gaming platforms/games; comment corresponding lines to not install unwanted programs. 

steam:
  chocolatey.installed:
    - name: steam
    - require:
      - pkg: chocolatey

origin:
  chocolatey.installed:
    - name: origin
    - require:
      - pkg: chocolatey

# Note that UPlay does not create any shortcuts after installation. UPlay can be found at C:\Program Files (x86)\Ubisoft

uplay:
  chocolatey.installed:
    - name: uplay
    - require:
      - pkg: chocolatey

epicgameslauncher:
  chocolatey.installed:
    - name: epicgameslauncher
    - require:
      - pkg: chocolatey

leagueoflegends:
  chocolatey.installed:
    - name: leagueoflegends
    - require:
      - pkg: chocolatey

# Install Teamspeak and Mumble for voice communications. Comment corresponding lines to not install unwanted programs.

teamspeak:
  chocolatey.installed:
    - name: teamspeak
    - require:
      - pkg: chocolatey

mumble:
  chocolatey.installed:
    - name: mumble
    - require:
      - pkg: chocolatey

# Discord installation. The installer is downloaded onto the desktop and must be opened manually
# as it won't install for unknown reasons if done through Salt.
# After installation is complete, the installer file can be deleted.

discord:
  cmd.run:
    - name: 'Invoke-WebRequest -Uri "https://discordapp.com/api/download?platform=win" -OutFile "C:\Users\Public\Desktop\DiscordSetup_DeleteAfterInstalling.exe"'
    - shell: powershell

