#!/bin/bash
set -e

sudo pacman -Syyu --noconfirm

# Install fonts
sudo pacman -S --noconfirm awesome-terminal-fonts ttf-font-awesome dina-font terminus-font tamsyn-font bdf-unifont ttf-bitstream-vera ttf-dejavu ttf-droid gnu-free-fonts ttf-ibm-plex ttf-liberation ttf-linux-libertine noto-fonts ttf-roboto tex-gyre-fonts ttf-ubuntu-font-family ttf-anonymous-pro ttf-cascadia-code ttf-fantasque-sans-mono ttf-fira-mono ttf-hack ttf-fira-code ttf-inconsolata ttf-jetbrains-mono ttf-monofur adobe-source-code-pro-fonts cantarell-fonts inter-font ttf-opensans gentium-plus-font ttf-junicode adobe-source-han-sans-otc-fonts adobe-source-han-serif-otc-fonts noto-fonts-cjk noto-fonts-emoji

# Fonts
# sudo pacman -S --noconfirm --needed noto-fonts
# curl -L https://github.com/iloginow/nerd-fonts/blob/InconsolataLGC/patched-fonts/InconsolataLGC/complete/Inconsolata%20LGC%20Nerd%20Font%20Complete.ttf -o ~/.local/share/fonts/Inconsolata\ LGC\ Nerd\ Font\ Complete.ttf
# curl -L https://github.com/iloginow/nerd-fonts/blob/InconsolataLGC/patched-fonts/InconsolataLGC/complete/Inconsolata%20LGC%20Italic%20Nerd%20Font%20Complete.ttf -o ~/.local/share/fonts/Inconsolata\ LGC\ Italic\ Nerd\ Font\ Complete.ttf
# curl -L https://github.com/iloginow/nerd-fonts/blob/InconsolataLGC/patched-fonts/InconsolataLGC/complete/Inconsolata%20LGC%20Bold%20Nerd%20Font%20Complete.ttf -o ~/.local/share/fonts/Inconsolata\ LGC\ Bold\ Nerd\ Font\ Complete.ttf
# curl -L https://github.com/iloginow/nerd-fonts/blob/InconsolataLGC/patched-fonts/InconsolataLGC/complete/Inconsolata%20LGC%20Bold%20Italic%20Nerd%20Font%20Complete.ttf -o ~/.local/share/fonts/Inconsolata\ LGC\ Bold\ Italic\ Nerd\ Font\ Complete.ttf
