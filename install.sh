pacman -S base-devel xorg xorg-server xorg-xinit xf86-video-vesa fish alacritty git ttf-dejavu wqy-microhei firefox python python-pip neofetch ctags ranger habak thunderbird fcitx fcitx-configtool fcitx-googlepinyin fcitx-im gimp kdenlive blender audacity jdk11-openjdk tree net-tools

if [ -e "/etc/X11/xinit/xinitrc" ]
then
    cp /etc/X11/xinit/xinitrc ~/.xinitrc
fi

git clone https://gitee.com/wlgc1801lzh/config.git ~
cp ~/config/.alacritty.yml ~
cp ~/config/.vimrc ~