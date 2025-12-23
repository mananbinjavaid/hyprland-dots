#!/bin/bash

# --- Colors ---
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

echo -e "${BLUE}======================================"
echo -e "   Manan's Hyprland Setup Script"
echo -e "======================================${NC}"

# --- 1. Arch Linux Check ---
if ! command -v pacman &> /dev/null; then
    echo -e "${RED}Error: This script is designed for Arch Linux.${NC}"
    exit 1
fi

# --- 2. Optional KDE/SDDM Install (Step 0 in README) ---
echo -ne "${YELLOW}Do you want to install KDE Plasma and SDDM for the best experience? (y/n): ${NC}"
read -r install_kde
if [[ $install_kde =~ ^[Yy]$ ]]; then
    echo -e "${BLUE}Installing KDE stack...${NC}"
    sudo pacman -S --needed --noconfirm plasma plasma-meta xorg sddm kde-applications
    
    echo -e "${YELLOW}Setting up SDDM...${NC}"
    # Detect and disable current display manager
    CURRENT_DM=$(systemctl list-unit-files --type=service | grep -E 'gdm|lightdm|ly|greetd' | grep enabled | awk '{print $1}')
    if [ ! -z "$CURRENT_DM" ]; then
        sudo systemctl disable "$CURRENT_DM"
    fi
    sudo systemctl enable sddm
    echo -e "${GREEN}KDE and SDDM configured.${NC}"
fi

# --- 3. Install Required Packages (Step 1 in README) ---
echo -e "${BLUE}Installing core dependencies...${NC}"
sudo pacman -S --needed --noconfirm hyprland rofi hyprpaper waybar dolphin firefox cliphist konsole impala btop pulsemixer vim ttf-jetbrains-mono-nerd git

# --- 4. Clone and Move Files (Steps 2 & 3 in README) ---
echo -e "${BLUE}Downloading and deploying dotfiles...${NC}"
TEMP_DIR=$(mktemp -d)
git clone --depth 1 https://github.com/mananbinjavaid/hyprland-dots.git "$TEMP_DIR"

# Backup logic
mkdir -p "$HOME/dotfiles_backup"
for folder in hypr waybar rofi; do
    if [ -d "$HOME/.config/$folder" ]; then
        echo "Backing up $folder..."
        cp -r "$HOME/.config/$folder" "$HOME/dotfiles_backup/"
        rm -rf "$HOME/.config/$folder"
    fi
done

# Copy new files
cp -r "$TEMP_DIR/.config/hypr" "$HOME/.config/"
cp -r "$TEMP_DIR/.config/waybar" "$HOME/.config/"
cp -r "$TEMP_DIR/.config/rofi" "$HOME/.config/"

# --- 5. Post-Installation (Step 4 in README) ---
echo -e "${BLUE}Finalizing permissions...${NC}"
chmod +x "$HOME/.config/hypr/scripts/reload-waybar.sh"

# If cycle-wallpaper exists, chmod it too
if [ -f "$HOME/.config/hypr/scripts/cycle-wallpaper.sh" ]; then
    chmod +x "$HOME/.config/hypr/scripts/cycle-wallpaper.sh"
fi

# --- 6. Cleanup & Exit ---
rm -rf "$TEMP_DIR"
echo -e "${GREEN}======================================"
echo -e "      INSTALLATION COMPLETE! "
echo -e "======================================${NC}"
echo "1. If this is a fresh install, please reboot: 'sudo reboot now'"
echo "2. Select 'Hyprland' at the login screen."
echo "3. Backups of your old configs are in ~/dotfiles_backup"
