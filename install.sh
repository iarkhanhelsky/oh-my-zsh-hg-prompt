#!/bin/zsh

# Check if ZSH_CUSTOM is set
if [[ ! -d $ZSH_CUSTOM ]]; then
    echo "Can't find ZSH_CUSTOM in your env or it's not a directory. Note: it sould be exported."
    exit 2
fi
plugin="$(dirname $0:A)/mercurial-prompt"
plugins="$ZSH_CUSTOM/plugins"
echo "Will link $plugin into $plugins"
mkdir -p $plugins
ln -s $plugin $plugins