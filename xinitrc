# Swap escape and caps lock
setxkbmap -option caps:swapescape


export XMODIFIERS=@im=SCIM
export GTK_IM_MODULE="xim"
export QT_IM_MODULE="scim"
scim -d

exec startxfce4
