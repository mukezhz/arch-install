1-install-yay.sh
#!/bin/bash

set -e

echo "Cloning YAY project into HOME direcotory"
cd ~ && git clone https://aur.archlinux.org/yay.git
echo "Making the project"
cd yay && makepkg -si --noconfirm
echo "[DONE] YAY Installed"