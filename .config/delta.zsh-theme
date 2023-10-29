# edited by vik
# put this in your ~/.oh-my-zsh/themes and reference it in your .zshrc

local resetColor="%{$reset_color%}"
local logoColors=(red green yellow blue magenta cyan grey)
local logoColor=${logoColors[ $RANDOM % 7 ]}
local logo="%{$fg_bold[$logoColor]%}△$resetColor"

ZSH_THEME_GIT_PROMPT_PREFIX="%F{242}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%f"
ZSH_THEME_GIT_PROMPT_DIRTY="±"
ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE="⇣"
ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE="⇡"


git_status() {
  echo -n "$(git_prompt_status)$(git_prompt_info)"
}

dir_status() {
  echo -n "%F{green}"
}

PROMPT="$logo "
RPROMPT='%F{green}%~%f $(git_status)'
