# Swap escape and caps lock
setxkbmap -option caps:swapescape

# ibus default input method
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

ibus-daemon -drx

# start xfce desktop
exec startxfce4
