# Awesome Home

[Manjaro Architect](https://manjaro.org/downloads/official/architect/)
installed custom with yay and Awesome window manager.

## Notes

1. Install Blueman.
1. Install PipeWire instead PulseAudio, Jack and ALSA.


## Configure profile

```shell
$ curl -o- https://raw.githubusercontent.com/fiuzagr/home/main/.local/bin/home_install | bash

[logout > login]

$ home_post_install

$ yay xorg-xinit
$ yay vim
$ yay tmux
$ yay unzip
$ yay brave
$ yay unclutter
$ yay pygobject
$ yay fluxgui
$ yay xsel
$ yay slock
$ yay powerkit
$ yay github-cli

$ startx
```

## Configure GitHub

```shell
$ ssh-keygen -t rsa -b 4096 -C "<username>"
$ cat ~/.ssh/id_rsa.pub | xsel -b

$ gpg --full-generate-key
$ gpg --list-secret-keys --keyid-format LONG
$ gpg --armor --export <ID> | xsel -b
```

## Troubleshooting

### No mic input of Dell laptops

```shell
$ echo 'options snd-hda-intel model=dell-m6-dmic' | sudo tee -a /etc/modprobe.d/mic.conf

[reboot]
```

From [Arch Linux Wiki](https://wiki.archlinux.org/index.php/Advanced_Linux_Sound_Architecture/Troubleshooting#No_microphone_input)
