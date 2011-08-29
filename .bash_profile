# Colors
##############################
   LGRAY="\\033[1;30m"
    LRED="\\033[1;31m"
  LGREEN="\\033[1;32m"
 LYELLOW="\\033[1;33m"
   LBLUE="\\033[1;34m"
 LPURPLE="\\033[1;35m"
   LCYAN="\\033[1;36m"
  LWHITE="\\033[1;37m"
   DGRAY="\\033[0;30m"
    DRED="\\033[0;31m"
  DGREEN="\\033[0;32m"
 DYELLOW="\\033[0;33m"
   DBLUE="\\033[0;34m"
 DPURPLE="\\033[0;35m"
   DCYAN="\\033[0;36m"
  DWHITE="\\033[0;37m"
 NOCOLOR="\\033[0m"

# Print out some stuff
#############################
clear
echo -en "$LBLUE"
echo "_________________________________________________________________________"
echo -en "$LCYAN"
date
echo -en "$NOCOLOR"

# do the bashrc thing
. ~/.bashrc
source ~/.bashrc

if [ -x /usr/games/fortune ] ; then
  echo -en "$DPURPLE"
	echo
	/usr/games/fortune
	echo
fi 
echo -e "${LBLUE}Welcome to: ${LRED}$HOSTNAME${LBLUE}"
[ -r /etc/redhat-release ] && cat /etc/redhat-release
uname -s -r -m -p
echo -en "$LGREEN"
uptime 

echo -en "$LBLUE"
echo "_________________________________________________________________________"
# change color to normal
echo -en "$NOCOLOR"
echo



##
# Your previous /Users/jleppert/.bash_profile file was backed up as /Users/jleppert/.bash_profile.macports-saved_2011-07-12_at_17:19:24
##

# MacPorts Installer addition on 2011-07-12_at_17:19:24: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

