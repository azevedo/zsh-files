#
# Env Variables
#

export VISUAL=vim
export EDITOR=$VISUAL

#
# OS Specific Env Variables
#

if [[ $CURRENT_OS == 'OS X' ]]; then
    # OS X Env Variables
elif [[ $CURRENT_OS == 'Linux' ]]; then
    # Linux Env Variables
    #EXAMPLE: export ECLIPSE_HOME=/opt/eclipse/
fi
