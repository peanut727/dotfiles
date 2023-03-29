# Home Configs

|Distro|WM|Bar|Compositor|Terminal|Shell|Package Manager|
|------|------|------|------|------|------|------|
|[CachyOS](https://cachyos.org/)|[BSPWM](https://github.com/baskerville/bspwm)|[Polybar](https://github.com/polybar/polybar)|[Picom](https://github.com/Arian8j2/picom)|[Kitty](https://github.com/kovidgoyal/kitty)|[Zsh](https://github.com/zsh-users/zsh)|[Paru](https://github.com/Morganamilo/paru)|

---


# Pipewire Tweaks

Make 95-pipewire.conf on this path.
/etc/security/limits.d/95-pipewire.conf
```
# Limits for users of pipewire
@pipewire - rtprio 95
@pipewire - nice -20
@pipewire - renice -20
@pipewire - memlock unlimited
```
Create a pipewire group using:
``
$ groupadd pipewire

Add your user to pipewire group:

$ gpasswd -a user pipewire

Don't forget to download RTKit package(If you don't have it).
-------------------------------------------------
Current Quants: 64/48000 balanced preset in terms of latency and cpu load.

---
```
# References | Credits
```
- https://github.com/terroo/dotfiles
- https://github.com/terroo/fonts
- https://github.com/KrulYuno/dotfiles

