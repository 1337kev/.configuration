# ~/.bashrc
[[ $- != *i* ]] && return

if [ -z "${WAYLAND_DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
exec sway
fi

export EDITOR=/usr/bin/helix

alias r='systemctl --user restart pipewire'
alias m='ncmpcpp'
alias ls='lsd -Al --group-directories-first'
alias lst='lsd --tree'
alias grep='grep --color=auto'
alias cp='sudo cp -aiv'
alias mv='sudo mv'
alias pacman='sudo pacman'
alias yay='yay'
alias rm='sudo rm'
alias clean='pacman -Rns $(pacman -Qttdq)'
alias yt='yt-dlp -f 140 --yes-playlist'

PS1='\[\e[1;34m\]〈\w 〉\[\e[00m\]'

set +o history
