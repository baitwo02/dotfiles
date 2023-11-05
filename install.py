import os

# 创建软链
path_homoe = os.environ["HOME"]
user_name  = os.environ["LOGNAME"]

path_cfg = path_homoe + "/.config"
path_dot = path_homoe + "/dotfiles"

cfgs = [
    "kwalletrc",
    "fish",
    "ranger",
    "kitty",
    "alacritty",
    "tmux",
    "hypr",
    "waybar",
    "wofi",
    "nvim",
    "fcitx5",
]
for cfg in cfgs:
    os.system(f"rm -rf {path_cfg}/{cfg}")
    os.symlink(f"{path_dot}/{cfg}", f"{path_cfg}/{cfg}")

# 安装需要的软件
needed_packages = [
    "tar",
    "gzip",
    "unzip",
    "curl", 
    "wget",
    "npm",
    "nodejs",
]

for needed_package in needed_packages:
    os.system(f"yay --noconfirm -S {needed_package}")
