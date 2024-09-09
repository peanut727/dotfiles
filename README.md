# Home Configs

|Distro|WM|Bar|Compositor|Terminal|Shell|Package Manager|
|------|------|------|------|------|------|------|
|[CachyOS](https://cachyos.org/)|[Hyprland](https://github.com/hyprwm/Hyprland)|[Waybar](https://github.com/Alexays/Waybar)|[Wayland]()|[Kitty](https://github.com/kovidgoyal/kitty)|[Zsh](https://github.com/zsh-users/zsh)|[Paru](https://github.com/Morganamilo/paru)|

---

![alt text](https://github.com/peanut727/dotfiles/blob/master/image.png?raw=true)










# Installing Dotfiles
```bash
echo ".cfg" >> ~/.gitignore
git clone --bare https://github.com/peanut727/dotfiles.git $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
config checkout
```







# Pipewire tweaks for low latency audio

Make 95-pipewire.conf on this path.
/etc/security/limits.d/95-pipewire.conf
```
# Limits for users of pipewire
@pipewire - rtprio 95
@pipewire - nice -20
@pipewire - renice -20
@pipewire - memlock unlimited
```
Create a pipewire group and add your user to the group using:
```
$ groupadd pipewire (creates a pipewire group)
$ gpasswd -a user pipewire (replace the user with your username)

Don't forget to download RTKit package(If you don't have it).
-------------------------------------------------
Current Quants: 64/48000 balanced preset in terms of latency and cpu load. ( feel free to experiment with these values every hardware is different. )
```
# Mouse Acceleration
  
  Just copy the `50-mouse-acceleration.conf` to ``/etc/X11/xorg.conf.d/``

# References | Credits
```
- https://github.com/terroo/dotfiles
- https://github.com/terroo/fonts
- https://github.com/KrulYuno/dotfiles
```
