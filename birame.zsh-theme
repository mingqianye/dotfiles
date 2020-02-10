# based in bira.zsh-theme

local user_symbol='$'
local current_dir='%{$terminfo[bold]$fg[blue]%}%~%{$reset_color%}'

PROMPT="╭─ ${current_dir}
╰─%B${user_symbol}%b "
