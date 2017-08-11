# [Oh My Zsh](http://ohmyz.sh/) mercurial-prompt plugin

Super simple and fast implementation of `hg_prompt_info` for Oh My Zsh

Does only one thing (for now) and does it pretty good: prints current mercurial branch name without lags.

## Instalation

* Clone this repository
* Setup `ZSH_CUSTOM` variable in your `.zshrc`. This variable should be exported. 
* Run `install.sh` from repository root
* Run `source ~/.zshrc` too apply changes.

## Customization

You can change following variables to update prompt appearence:

* `$ZSH_PROMPT_BASE_COLOR` default value `"%{${fg_bold[blue]}%}"`
* `ZSH_THEME_HG_PROMPT_TAG` default value `"hg"`
* `ZSH_THEME_HG_PROMPT_PREFIX` default value `":"`
* `ZSH_THEME_HG_PROMPT_SUFFIX` default value `""`
* `ZSH_THEME_HG_PROMPT_BRANCH_COLOR` default value `"%{$fg_bold[magenta]%}"`

Most of them follows [original mercurial plugin](https://github.com/robbyrussell/oh-my-zsh/blob/master/plugins/mercurial/mercurial.plugin.zsh) names. 