import os

path_homoe = os.environ["HOME"]
user_name  = os.environ["LOGNAME"]

path_cfg = path_homoe + "/.config"
path_dot = path_homoe + "/dotfiles"

cfgs = [
    "kwalletrc",
    "fish",
    "kitty",
    "hypr",
    "waybar",
    "yazi",
]

# 创建软链
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
    "cmake",
]

packages = " ".join(needed_packages)

os.system(f"yay --noconfirm -S {packages}")
