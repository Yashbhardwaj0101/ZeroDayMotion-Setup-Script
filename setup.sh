#!/bin/bash

# ZeroDayMotion Ultimate Setup Script
echo "--- ZeroDayMotion: System Optimization Shuru Ho Raha Hai ---"

# 1. Update & Upgrade
echo "Step 1: System Update..."
sudo apt update && sudo apt upgrade -y

# 2. Essential CLI Tools (Hacker Essentials)
echo "Step 2: Installing Hacker Essentials..."
sudo apt install -y curl wget git vim alacritty btop fzf zsh htop neofetch fastfetch build-essential

# 3. Flatpak Support (Latest Apps ke liye)
echo "Step 3: Setting up Flatpak..."
sudo apt install -y flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# 4. Developer/Productivity Apps
echo "Step 4: Installing Dev/Productivity Apps..."
# VS Code, Discord, Spotify (Flatpak se easy hai)
flatpak install -y flathub com.visualstudio.code
flatpak install -y flathub com.discordapp.Discord
flatpak install -y flathub com.spotify.Client

# 5. Oh My Zsh Setup (The Professional Look)
echo "Step 5: Installing Oh My Zsh..."
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

# 6. Aesthetic Touches
echo "Step 6: Applying Terminal Preferences..."
# Alacritty config link (Agar aapne GitHub par dala hai)
mkdir -p ~/.config/alacritty
# Yahan aap apni config file download kar sakte hain
# wget -O ~/.config/alacritty/alacritty.yml [Aapka-GitHub-Raw-Link]

# 7. Final Cleanup
echo "Step 7: Finalizing..."
sudo apt autoremove -y

echo "--- Setup Complete! ZeroDayMotion Ready Hai! ---"
echo "Note: Terminal restart karein zsh active karne ke liye."
