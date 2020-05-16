pacman -S xorg xorg-server xorg-xinit xf86-video-vesa fish alacritty wget curl git sudo ttf-dejavu wqy-microhei firefox python python-pip neofetch ctags

if [ -e "/etc/X11/xinit/xinitrc" ]
then
    cp /etc/X11/xinit/xinitrc ~/.xinitrc
fi

wget -P ~ http://gitee.com/wlgc1801lzh/config/raw/master/.alacritty.yml
wget -P ~ http://gitee.com/wlgc1801lzh/config/raw/master/vim/.vimrc

if [ ! -d "~/dwm" ]
then
    mkdir ~/dwm
    wget -P ~/dwm https://dl.suckless.org/dwm/dwm-6.2.tar.gz
    tar zxvf ~/dwm/dwm-6.2.tar.gz -C ~/dwm
    rm ~/dwm/dwm-6.2.tar.gz
fi
