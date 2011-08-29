# .bashrc
#
# basic non-threatening rc file made by me.  Everything in here I did myself
# and probably should have known better.

# $Author: johnathanl $
# $Date: 2009-06-03 17:43:17 -0400 (Wed, 03 Jun 2009) $
# $Revision: 73 $

# Source global definitions -- do this first cause we overwrite some defaults
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi


# Aliases I just can't live without
ulimit -c 10000000
alias ls='gls -haXF --color=auto'
alias grep='grep --color=tty'
alias egrep='egrep --color=tty'
alias cd..='cd ..'
alias del='rm -i'
alias l.='ls -d .*'
alias v='vim -R -'
alias vi='vim'
alias psa='ps axf'
alias psA='ps -Af'
alias ps-='ps -Af |grep ^jleppert'
alias du='du -h'
alias df='df -h'
alias l='less'
alias ll.='l. -l'
alias ll='ls -l'
alias cd.='cd `pwd -LP`'
alias su-='su -'
alias e="vi"
alias mysql="/usr/local/mysql/bin/mysql"

cd() {
  if [ -n "$1" ]; then
    builtin cd "$@" && ls
  else
    builtin cd ~ && ls
  fi
}


# NOTE: it's a good idea to have these aliases below, but do not depend
# on them (i.e. don't do "rm *" with the intention of answering no to the
# files you don't want to delete) because you may end up
# a terminal that doesn't delete/copy in interactive mode, and you could
# unintentionally delete/clobber vital files.

alias cp='cp -i -v'	# prompt before overwriting files
alias rm='rm -i'  # prompt before deleting files

export HISTSIZE=100000
export HISTFILESIZE=100000
export HISTCONTROL=ignoreboth

if [ -z "$JAVA_HOME" ] ; then 
	J_H="/usr/lib/jvm/jre"
	[ -d "$J_H" ] && export JAVA_HOME="$J_H"
fi

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

PS_LGRAY="\[${LGRAY}\]"
PS_LRED="\[${LRED}\]"
PS_LGREEN="\[${LGREEN}\]"
PS_LYELLOW="\[${LYELLOW}\]"
PS_LBLUE="\[${LBLUE}\]"
PS_LPURPLE="\[${LPURPLE}\]"
PS_LCYAN="\[${LCYAN}\]"
PS_LWHITE="\[${LWHITE}\]"
PS_DGRAY="\[${DGRAY}\]"
PS_DRED="\[${DRED}\]"
PS_DGREEN="\[${DGREEN}\]"
PS_DYELLOW="\[${DYELLOW}\]"
PS_DBLUE="\[${DBLUE}\]"
PS_DPURPLE="\[${DPURPLE}\]"
PS_DCYAN="\[${DCYAN}\]"
PS_DWHITE="\[${DWHITE}\]"
PS_NOCOLOR="\[${NOCOLOR}\]"

#############################
# color the working directory
if [ $UID == 0 ]; then
	export PS1="[${PS_LRED}\u${PS_NOCOLOR}@${PS_LYELLOW}\H${PS_LBLUE} \W${PS_NOCOLOR}]\$ "
else
	export PS1="[${PS_LGREEN}\u${PS_NOCOLOR}@${PS_LYELLOW}\H${PS_LBLUE} \W${PS_NOCOLOR}]\$ "
fi

# do not overwrite files on > redirection
set -o noclobber
# update window size to fix wrapping
shopt -s checkwinsize

# default to my home directory, but also execute files in .
PATH="$PATH:/sbin:/usr/sbin:/usr/local/sbin:./:$HOME/bin"
[ -d $HOME/src/tools ] && PATH="$PATH:$HOME/src/tools"
export PATH

# lets hear it for vim!
export EDITOR="vim"

[ -z "$LANG" ] && export LANG="en_US.UTF8"

#_____________________ COLORS __________________________________________

# standard LS_COLORS defaults (more or less)
# These define colors for meta-file types, archives, and multimedia
LS_COLORS="no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35\
:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31\
:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31\
:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35\
:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35\
:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35\
:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35\
:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35"

# color the html files yellow, core files white on red, java/class files yellow
# and rcs version files dark gray

# Color settings as follows:

# text files: orange
# html htm doc txt css conf README

# source files: yellow
# shtml java c cc cpp php pl h inc pm py

# files that don't belong: white on red
# core dead.letter

# binaries (non-executable): dark green
# class o so exe (mono bins)

# files to ignore (backups, etc): dark gray
# ,v (rcs version files), .bak, *~

LS_COLORS="$LS_COLORS\
:*.html=00;33:*.htm=00;33:*.doc=00;33:*.txt=00;33:*.css=00;33\
:*.conf=00;33:*README=00;33\
:*.shtml=01;33:*.java=01;33:*.c=01;33:*.cc=01;33:*.cpp=01;33\
:*.php=01;33:*.pl=01;33:*.h=01;33:*.inc=01;33:*.pm=01;33:*.py=01;33\
:*core=1;41:*dead.letter=01;41\
:*.class=00;32;32:*.o=00;32:*.so=00;32:*.exe=00;32\
:*,v=01;30:*.bak=01;30:*~=01;30"

export LS_COLORS

# ---------------------------------------------------------

localtime() {
	perl -e "print scalar localtime $1";
	echo;
}

gmtime() {
	perl -e "print scalar gmtime $1";
	echo;
}

pyhelp() {
	echo "import $1;help($1)" | python | less
}

b64e() { perl -e 'use MIME::Base64 qw(encode_base64);$/=undef;print encode_base64(<>);'; }
b64d() { perl -e 'use MIME::Base64 qw(decode_base64);$/=undef;print decode_base64(<>);'; }

pack() {
	gzip -c $* | b64e
}

unpack() {
	b64d | gunzip
}

packf() {
	tar -cf - $* | gzip | b64e
}

unpackf() {
	b64d | tar -zxf - 
}

mydumpall() {
	for DB in `echo show databases | mysql -B --skip-column-names $*`; do
		echo $DB; mysqldump $DB $* > $DB.sql
	done
}

passgen() {
	GET 'http://tltech.com/password/?short=1'
}

if [ -e .bashrc_local ] ; then
	. .bashrc_local
fi

# rvm
[[ -s "/Users/jleppert/.rvm/scripts/rvm" ]] && source "/Users/jleppert/.rvm/scripts/rvm" 

# fix for mysql: see http://stackoverflow.com/questions/4512362/rails-server-fails-to-start-with-mysql2-using-rvm-ruby-1-9-2-p0-on-osx-10-6-5
export DYLD_LIBRARY_PATH="/usr/local/mysql/lib:$DYLD_LIBRARY_PATH"

export TERM=xterm-color
export CLICOLOR=TRUE
export LSCOLORS=Gxfxbxdxcxegedabagacad

## amazon ec2
export EC2_PRIVATE_KEY=$HOME/aws-keys/x509/pk-AZE62UBE5JRVSEN47RYF3VPMWSR7TTAW.pem
export EC2_CERT=$HOME/aws-keys/x509/cert-AZE62UBE5JRVSEN47RYF3VPMWSR7TTAW.pem

# JAVA env
export JAVA_HOME=/Library/Java/Home

# Maven options
export MAVEN_OPTS="-Xmx750m -XX:PermSize=256m"
export tellapal="/Users/jleppert/devel/etc/tellapal.properties"
export TELLAPAL="/Users/jleppert/devel/etc/tellapal.properties"

export tellapal_properties="/Users/jleppert/devel/etc/tellapal.properties"
export THOR_SCHEDULER_PROPERTIES="/Users/jleppert/devel/etc/Opus1/thor_scheduler.properties"
