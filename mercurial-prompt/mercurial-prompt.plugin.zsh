# Updates hg root
function update_hg_root() {
  local path=$(pwd)
  while [[ $path != "/" && ( ! -d "$path/.hg" ) ]]; do
    local v="$path/.."
    path=$v:A    
  done	  

  if [[ $path != "/" ]]; then
    HG_ROOT=$path 
  else
    HG_ROOT="" # hg repository not found 
  fi
}

# Will update hg root every time user changes dir.
# This approach fast but doesn't work with two corner 
# cases:
# - user runs hg init in current directory
# - user deletes .hg in current directory.

# Only one function
if  [[ ${chpwd_functions[(r)update_hg_root]} != update_hg_root ]]; then
  chpwd_functions=(${chpwd_functions[@]} "update_hg_root")
fi

function hg_branch() {
    if [[ -n $HG_ROOT ]]; then
        cat "$HG_ROOT/.hg/branch"
    fi 
}

function hg_prompt_info() {
    if [[ -n $HG_ROOT ]]; then
        echo "$ZSH_PROMPT_BASE_COLOR$ZSH_THEME_HG_PROMPT_TAG$ZSH_THEME_HG_PROMPT_PREFIX$ZSH_THEME_HG_PROMPT_BRANCH_COLOR$(hg_branch)$ZSH_THEME_HG_PROMPT_COLOR$ZSH_THEME_HG_PROMPT_SUFFIX%{${reset_color}%}"
    fi
}

# Default values for the appearance of the prompt.
ZSH_PROMPT_BASE_COLOR="%{${fg_bold[blue]}%}"
ZSH_THEME_HG_PROMPT_TAG="hg"
ZSH_THEME_HG_PROMPT_PREFIX=":"
ZSH_THEME_HG_PROMPT_SUFFIX=""
ZSH_THEME_HG_PROMPT_SEPARATOR="|"
ZSH_THEME_HG_PROMPT_BRANCH_COLOR="%{$fg_bold[magenta]%}"