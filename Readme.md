# [Oh My Zsh](http://ohmyz.sh/) mercurial-prompt plugin

Super simple and fast implementation of `hg_prompt_info` for Oh My Zsh

Does only one thing (for now) and does it pretty good: prints current mercurial branch name without lags.

> Current oh-my-zsh plugin is slow and all alternative PR stuck for years waiting for review. 

## Instalation

* Clone this repository
* Setup `ZSH_CUSTOM` variable in your `.zshrc`. This variable should be exported. 
* add `mecrurial-prompt` to `plugins` in your `.zshrc`
* Switch to a theme which uses `hg_prompt_info`.

> Or, customize the $PROMPT variable of your current theme to contain current folder mercurial repo info. This can be done by putting a custom version of the theme in $ZSH_CUSTOM or by changing $PROMPT in .zshrc after loading the theme.
> The `robbyrussell` theme is used by default, so you need to modify $PROMPT var by adding `$(hg_prompt_info)` after `$(git_prompt_info)`, so it looks like this:
>
> ```
> PROMPT='${ret_status}%{$fg_bold[green]%}%p %{$fg[cyan]%}%c %{$fg_bold[blue]%}$(git_prompt_info)$(hg_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'
> ```
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
