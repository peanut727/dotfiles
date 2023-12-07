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
alias osumv="mv ~/Downloads/*.osz /hdd/osu\!/Songs"
alias vim="nvim"

## dotfile management
alias dotfiles='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias dfcommit='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME commit -m'
alias dfupdate='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME add -u'
alias dfstatus='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME status'
alias dfadd='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME add'
alias dfpush='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME push'



alias grubrefresh='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias vim='nvim'

##peanut aliases
alias pvpn='protonvpn-cli'
alias winege='$HOME/.local/share/lutris/runners/wine/lutris-GE-Proton7-42-x86_64/bin/wine'
