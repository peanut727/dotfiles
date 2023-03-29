# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /usr/share/cachyos-zsh-config/cachyos-config.zsh
export PATH="$HOME/.local/bin/:$PATH"
export PATH="$HOME/.local/bin/:$PATH"

unsetopt correct_all

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh




#aliases
alias osumv= "mv ~/Downloads/*.osz /hdd/osu\!/Songs"
alias vim="nvim"
alias dotfiles='/usr/bin/git --git-dir=$HOME/.cfg/.git/ --work-tree=$HOME'
alias dfpush='/usr/bin/git --git-dir=$HOME/.cfg/.git/ --work-tree=$HOME push -u origin master'
alias dfcommit='/usr/bin/git --git-dir=$HOME/.cfg/.git/ --work-tree=$HOME commit -m'
alias dfupdate='/usr/bin/git --git-dir=$HOME/.cfg/.git/ --work-tree=$HOME add -u'
alias dfstatus='/usr/bin/git --git-dir=$HOME/.cfg/.git/ --work-tree=$HOME status'
alias dfadd='/usr/bin/git --git-dir=$HOME/.cfg/.git/ --work-tree=$HOME add'
