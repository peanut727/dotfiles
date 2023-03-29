# Home Configs

|Distro|WM|Bar|Compositor|Terminal|Shell|Package Manager|
|------|------|------|------|------|------|------|
|[CachyOS](https://cachyos.org/)|[BSPWM](https://github.com/baskerville/bspwm)|[Polybar](https://github.com/polybar/polybar)|[Picom](https://github.com/Arian8j2/picom)|[Kitty](https://github.com/kovidgoyal/kitty)|[Zsh](https://github.com/zsh-users/zsh)|[Yay](https://github.com/Jguer/yay)|

---



# Pipewire Tweaks

Make 95-pipewire.conf on this path.
/etc/security/limits.d/95-pipewire.conf
-------------------------------------------------
```
# Limits for users of pipewire
@pipewire - rtprio 95
@pipewire - nice -19
@pipewire - renice -19
@pipewire - memlock unlimited
-------------------------------------------------
Then add your pipewire group after that add your user to pipewire group then logout.
Also don't forget to download RTKit package.
-------------------------------------------------
Experiment with the quants >> Currently using 64 and it is very stable.

---
```
# References | Credits
```
- https://github.com/terroo/dotfiles
- https://github.com/terroo/fonts
- https://github.com/KrulYuno/dotfiles

