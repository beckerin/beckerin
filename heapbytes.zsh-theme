PROMPT=$'
┏━[%F{green}⯈ %~%f] [%F{green}ᯤ $(get_ip_address)%f] $(get_prompt_git)
┗━⯈ '

RPROMPT='[%F{red}%?%f]'

get_ip_address() {
  if [[ -n "$(hostname -I 2>/dev/null)" ]]; then
    echo "%{$fg[green]%}$(hostname -I | grep -oE '(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)')%{$reset_color%}"
  else
    echo "%{$fg[red]%}No IP%{$reset_color%}"
  fi
}
get_prompt_git() {
  if [[ -n "$(git_prompt_info 2> /dev/null)" ]]; then
  echo "%{[$fg[green]% $(git_prompt_info)%{$reset_color%}]"
  fi
}
