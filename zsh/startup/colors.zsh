# Set up zsh color environment
#
# Default environment assumes that you have 256 colors

if [ $_ramen[color_env] = '256' ]; then
  _ramen[ORANGE]="%{%F{214}%}"
else
  _ramen[ORANGE]="%{%F{3}%}"
fi

# Default colors that fit within 16 bit colors
_ramen[WHITE]="%{%F{15}%}"
_ramen[GRAY]="%{%F{8}%}"
_ramen[LIGHT_GRAY]="%{%F{7}%}"
_ramen[RED]="%{%F{9}%}"
_ramen[BLUE]="%{%F{12}%}"
_ramen[CYAN]="%{%F{14}%}"
_ramen[YELLOW]="%{%F{11}%}"
_ramen[GREEN]="%{%F{2}%}"
_ramen[MAGENTA]="%{%F{13}%}"

# Text changes
_ramen[BOLD_START]="%B"
_ramen[BOLD_END]="%b"
