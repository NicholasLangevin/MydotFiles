alias config='/usr/bin/git --git-dir=/Users/nicholaslangevin/.cfg/ --work-tree=/Users/nicholaslangevin'

alias ls='ls -F'
alias tmux='tmux -2'
alias G='cd ~/GitHub/'
alias M='cd ~/MydotFiles/'
# alias use in my windows-sublinux machine
if [[ $(uname -n) -eq "PC-Nicholas" ]]; then
    alias nicholas="/mnt/c/Users/Nicholas"
fi

# Enable vim inside bash
set -o vi

#=========== Git Configuration ===============

# get current branch in git repo
function parse_git_branch() {
    BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
    if [ ! "${BRANCH}" == "" ]
    then
    STAT=`parse_git_dirty`
    echo "[${BRANCH}${STAT}]"
    else
        echo ""
    fi
}

# get current status of git repo
function parse_git_dirty {
    status=`git status 2>&1 | tee`
    dirty=`echo -n "${status}" 2> /dev/null | grep "modified:" &> /dev/null; echo "$?"`
    untracked=`echo -n "${status}" 2> /dev/null | grep "Untracked files" &> /dev/null; echo "$?"`
    ahead=`echo -n "${status}" 2> /dev/null | grep "Your branch is ahead of" &> /dev/null; echo "$?"`
    newfile=`echo -n "${status}" 2> /dev/null | grep "new file:" &> /dev/null; echo "$?"`
    renamed=`echo -n "${status}" 2> /dev/null | grep "renamed:" &> /dev/null; echo "$?"`
    deleted=`echo -n "${status}" 2> /dev/null | grep "deleted:" &> /dev/null; echo "$?"`
    bits=''
    if [ "${renamed}" == "0" ]; then
    bits=">${bits}"
    fi
    if [ "${ahead}" == "0" ]; then
    bits="*${bits}"
    fi
    if [ "${newfile}" == "0" ]; then
    bits="+${bits}"
    fi
    if [ "${untracked}" == "0" ]; then
    bits="?${bits}"
    fi
    if [ "${deleted}" == "0" ]; then
    bits="x${bits}"
    fi
    if [ "${dirty}" == "0" ]; then
    bits="!${bits}"
    fi
    if [ ! "${bits}" == "" ]; then
    echo " ${bits}"
    else
        echo ""
    fi
}

# Show repo & git status
export PS1="\[\e[0m\]\W\[\e[m\]\[\e[31m\]\`parse_git_branch\`\[\e[m\]\\$ "
