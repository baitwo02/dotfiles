import os

home_directory = os.environ["HOME"]
user_name  = os.environ["LOGNAME"]

config_directory = home_directory + "/.config"
dotfiles_directory = home_directory + "/dotfiles"

config_folders = ["fish", "nvim", "ranger", "kitty"]
for config_folder in config_folders:
    os.system("rm -rf %s/%s" % (config_directory, config_folder))
    os.symlink("%s/%s" % (dotfiles_directory, config_folder),
               "%s/%s" % (config_directory, config_folder))


