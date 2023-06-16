# zplug settings.
export ZPLUG_HOME=/opt/homebrew/opt/zplug
source $ZPLUG_HOME/init.zsh
# zplug
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "b4b4r07/zsh-vimode-visual", defer:3
# 保管を強化
zplug "zsh-users/zsh-completions"
zplug "b4b4r07/enhancd", use:init.sh
zplug "zsh-users/zsh-autosuggestions"
#zplug "romkatv/powerlevel10k", use:powerlevel10k.zsh-theme

# git の補完を効かせる
# 補完＆エイリアスが追加される
zplug "plugins/git",   from:oh-my-zsh
zplug "peterhurford/git-aliases.zsh"

zplug load

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi






# 補完を有効
autoload -Uz compinit && compinit

autoload -Uz vcs_info


setopt auto_list
setopt auto_menu
zstyle ':completion:*:default' menu select=1
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
setopt auto_cd

export LANG=ja_JP.UTF-8
HISTFILE=$HOME/.zsh-history
HISTSIZE=1000000
SAVEHIST=1000000
setopt share_history


## prompt
#PROMPT=" %{[38;5;154m%}%~%{[0m%}
# %{[38;5;81m%}%(!.#.$)%{[0m%} "
#RPROMPT="%{[38;5;013m%}[%m]%{[0m%}"
#
## vcs_info
#autoload -Uz vcs_info
#setopt prompt_subst
#zstyle ':vcs_info:git:*' check-for-changes true
#zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
#zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
#zstyle ':vcs_info:*' formats "%F{green}%c%u[ %b]%f"
#zstyle ':vcs_info:*' actionformats '[%b|%a]'
#precmd () { vcs_info }
#RPROMPT='${vcs_info_msg_0_} '$RPROMPT
#
## To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
#
#
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
# PROMPT=\$vcs_info_msg_0_'%# '
zstyle ':vcs_info:git:*' formats '%b'

PROMPT="%{${fg[green]}%}[%*]%{${reset_color}%} %~ %# "


#alias
alias vim='/opt/homebrew/opt/vim/bin/vim'
alias fzf='/usr/local/opt/fzf/bin/fzf'
alias ls='ls -G'
alias la='ls -aG'
alias ll='ls -lFG'
alias lla='ls -laFG'
alias grep='grep --color=auto'
alias cdgit='cd ~/git'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
