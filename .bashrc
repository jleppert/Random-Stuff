# .bashrc

#PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
# User specific aliases and functions

function PWD {
tmp=${PWD%/*/*};
[ ${#tmp} -gt 0 -a "$tmp" != "$PWD" ] && echo ${PWD:${#tmp}+1} || echo $PWD;
}

export PS1="\[\033[0;32m\]\u@\h \[\033[33m\]\$(PWD 3)\[\033[0m\] \$ ";

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

export TERM='xterm-256color'
export LANG='en_US.UTF-8'
#eval "`dircolors -b`"
export CLICOLOR=YES
alias ls='ls --color=auto -G'
alias mysqlc="mysql --defaults-file=~/.mysql_info.conf"
alias mysqlf="mysql --defaults-file=~/.mysql_info_foresight.conf"
alias cd..="cd .." #work around a common typo
alias e="vi"

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
alias ps-='ps -Af |grep ^johnathan'
alias du='du -h'
alias df='df -h'
alias l='less'
alias ll.='l. -l'
alias ll='ls -l'
alias cd.='cd `pwd -LP`'
alias su-='su -'
alias e="vi"

alias branches="cd /nfshome/leppert.5/devel/websites/"
alias trunk="cd /nfshome/leppert.5/devel/ccms_trunk; cvs up -d"
alias vhost="cd /nfshome/leppert.5/my_apache/vhost.d"
alias tailer="tail -f /nfshome/leppert.5/var/log/httpd/error_log"
alias tester="perl -I /nfshome/leppert.5/devel/ccms_trunk_test/lib /nfshome/leppert.5/devel/ccms_trunk_test/cgi-bin/test.pl"
alias etester="vi /nfshome/leppert.5/devel/ccms_trunk_test/cgi-bin/test.pl" 

alias cp='cp -i -v' # prompt before overwriting files
alias rm='rm -i'  # prompt before deleting files
alias cvsstatus="cvs up -d 2> /dev/null"

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
    export PS1="[${PS_LRED}\]\[${PS_LBLUE}\]\u\[${PS_LYELLOW}\]\[${PS_LYELLOW}\]\w\[\033[m\]\[${PS_DPURPLE}\]\$(__git_ps1)\[${PS_NOCOLOR}\]]${PS_LWHITE}\]\$ \[${PS_NOCOLOR}"
    #export PS1="[${PS_LGREEN}\u${PS_NOCOLOR}@${PS_LYELLOW}\H${PS_LBLUE} \W${PS_NOCOLOR}]\$ "
fi

LS_COLORS="no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35\
:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31\
:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31\
:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35\
:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35\
:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35\
:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35\
:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35"

LS_COLORS="$LS_COLORS\
:*.html=00;33:*.htm=00;33:*.doc=00;33:*.txt=00;33:*.css=00;33\
:*.conf=00;33:*README=00;33\
:*.shtml=01;33:*.java=01;33:*.c=01;33:*.cc=01;33:*.cpp=01;33\
:*.php=01;33:*.pl=01;33:*.h=01;33:*.inc=01;33:*.pm=01;33:*.py=01;33\
:*core=1;41:*dead.letter=01;41\
:*.class=00;32;32:*.o=00;32:*.so=00;32:*.exe=00;32\
:*,v=01;30:*.bak=01;30:*~=01;30"

export LS_COLORS
LSCOLORS="$LS_COLORS"
export LSCOLORS
# lets hear it for vim!
export EDITOR="vim"

[ -z "$LANG" ] && export LANG="en_US.UTF8"

cd() {
  if [ -n "$1" ]; then
    builtin cd "$@" && ls
  else
    builtin cd ~ && ls
  fi
}

d () {
  # see http://troy.yort.com/short-fast-micro-whois
  result=`dig -t NS "$1" | grep -c "ANSWER SECTION"`
  if [ "$result" = "0" ]; then
    # some registered domains have no NS resource record in root servers; may
    # be false negative, so confirm with whois
    result=`whois -n "$1" | grep -c "Registrar: "`
  fi
echo $result
  return $result
}

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

passgen() {
        GET 'http://tltech.com/password/?short=1'
}

export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:$PATH"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
eval $(dircolors -b $HOME/.dircolors)
