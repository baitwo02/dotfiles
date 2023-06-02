import os

home_directory = os.environ["HOME"]
user_name  = os.environ["LOGNAME"]

path_config = home_directory + "/.config"
path_dotfiles = home_directory + "/dotfiles"

config_folders = [
    "fish",
    "ranger",
    "kitty",
    "alacritty",
    "tmux",
    "kwalletrc",
    "hypr",
    "waybar",
    "wofi",
]
for config_folder in config_folders:
    os.system("rm -rf %s/%s" % (path_config, config_folder))
    os.symlink("%s/%s" % (path_dotfiles, config_folder),
               "%s/%s" % (path_config, config_folder))


