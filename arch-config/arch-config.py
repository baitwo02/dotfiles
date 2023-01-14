import os


user = "baitwo02"

# 配置 archlinuxcn 源
archlinuxcn = "[archlinuxcn]\nServer = https://mirrors.ustc.edu.cn/archlinuxcn/$arch"
with open(r"/etc/pacman.conf", "a", encoding="utf-8") as f1:
    f1.write(archlinuxcn)
os.popen("sudo pacman --noconfirm -S archlinuxcn-keyring")

# 安装及配置登陆管理器
os.popen("sudo pacman --noconfirm -S lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings")
os.popen("sudo systemctl enable lightdm.service")

# 安装桌面环境及wm, 默认只安装xfce4, 因为xfce4 非常小
os.popen("sudo pacman --noconfirm -S xfce4 xfce4-goodies")
# os.popen("sudo pacman --noconfirm -S plasma kde-applications i3 polybar xfce4 xfce4-goodies")

# 配置中文输入法
os.popen("sudo pacman --noconfirm -S fcitx5 fcitx5 fcitx5-chinese-addons fcitx5-qt fcitx5-gtk fcitx5-lua fcitx5-pinyin-zhwiki fcitx5-configtool")
fictx5_config = "EDITOR=nvim\nVISUAL=nvim\nGTK_IM_MODULE=fcitx\nQT_IM_MODULE=fcitx\nXMODIFIERS=@im=fcitx\nSDL_IM_MODULE=fcitx\nGLFW_IM_MODULE=ibus"
with open("/etc/environment", "a", encoding="utf-8") as f2:
    f2.write(fictx5_config)
os.popen("sudo pacman --noconfirm -S ttf-lxgw-wenkai ttf-lxgw-wenkai-mono nerd-fonts-hack")
os.popen(f"sudo mkdir /home/{user}/.config/autostart")
os.popen(f"sudo cp /usr/share/applications/org.fcitx.Fcitx5.desktop ~/.config/autostart/")

# 配置代理及aur
os.popen("sudo pacman --noconfirm -S v2raya yay paru")
os.popen("sudo systemctl enable v2raya.service")

# 配置电源管理
os.popen("sudo pacman --noconfirm -S tlp tlp-rdw")
os.popen("sudo systemctl enable tlp.service")
os.popen("sudo systemctl enable tlp-sleep.service")

# 配置蓝牙
os.popen("sudo pacman --noconfirm -S bluez bluez-utils blueberry")
os.popen("sudo systemctl enable bluetooth.service")

# 安装常用管理设置
os.popen("sudo pacman --noconfirm -S light")

# 安装常用软件
os.popen("sudo pacman --noconfirm -S firefox git kitty grub-customizer feh network-manager-applet")

# 转换用户目录权限
os.popen(f"sudo usermod -aG video,audio {user}")
os.popen(f"sudo chmod -R {user}:{user} /home/{user}")

