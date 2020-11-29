# Awesome Home

[Manjaro Architect](https://manjaro.org/downloads/official/architect/)
installed custom with yay and Awesome window manager.

```shell
curl -o- https://raw.githubusercontent.com/fiuzagr/home/awesome/.local/bin/home_install | bash

# logout > login

home_post_install

yay xorg-xinit
yay brave
yay unclutter
yay fluxgui
yay xsel

startx
```

Configure GitHub:

```shell
ssh-keygen -t rsa -b 4096 -C "<username>" cat ~/.ssh/id_rsa.pub | xsel -b

gpg --full-generate-key
gpg --list-secret-keys --keyid-format LONG
gpg --armor --export <ID> | xsel -b
```
