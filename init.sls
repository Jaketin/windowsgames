# Install Chocolatey to easily install the wanted programs

chocolatey:
  pkg.installed

# Comment corresponding lines to not install a program, example:

#steam:
#  chocolatey_installed

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


# Install gaming platforms/games; comment corresponding lines to not install unwanted programs. 

steam:
  chocolatey.installed

origin:
  chocolatey.installed

uplay:
  chocolatey.installed

epicgameslauncher:
  chocolatey.installed

leagueoflegends:
  chocolatey.installed

# Install Discord, Teamspeak and Mumble for voice communications. Comment corresponding lines to not install unwanted programs.

discord:
  chocolatey.installed

teamspeak:
  chocolatey.installed

mumble:
  chocolatey.installed
