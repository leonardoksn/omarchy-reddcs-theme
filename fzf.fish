set -l color00 '#14101c'
set -l color01 '#b45cd8'
set -l color02 '#7c6ca0'
set -l color03 '#c77df0'
set -l color04 '#6c4ca0'
set -l color05 '#9a4fd0'
set -l color06 '#6a6580'
set -l color07 '#7565a0'
set -l color08 '#45395f'
set -l color09 '#b45cd8'
set -l color0A '#7c6ca0'
set -l color0B '#c77df0'
set -l color0C '#6c4ca0'
set -l color0D '#9a4fd0'
set -l color0E '#6a6580'
set -l color0F '#b8a3e0'

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"" --color=bg+:$color00,bg:$color00,spinner:$color0E,hl:$color0D"" --color=fg:$color07,header:$color0D,info:$color0A,pointer:$color0E"" --color=marker:$color0E,fg+:$color06,prompt:$color0A,hl+:$color0D"
