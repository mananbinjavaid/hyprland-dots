# Hyprland Dotfiles

Just Hyprland Dotfiles which are very Customizable. This setup is created on Arch Linux and is suitable for Arch Linux, but you can customize it to make it suitable for your linux distro too. **All the Commands in this README will only work on Arch Linux or any Arch-Based Distro.** 

## Packages/Apps/Tools/Wallpaper Used

- **WM:** Hyprland
- **Terminal:** Konsole (You can change/customize it)
- **Browser:** Firefox
- **File Explorer:** Dolphin
- **Status Bar:** Waybar
- **Application Launcher:** Rofi
- **Wallpaper:** KDE Plasma's Mountain Dark (Already included in Dotfiles: ~/.config/hypr/wallpapers/wallpaper.png)
- **Volume Controller:** PulseMixer
- **System Monitor:** btop++

## Installation

To install and use these dotfiles, follow these steps:

### IMPORTANT: Before Installing

Please Note that :
**All the Commands in this README will only work on Arch Linux or any Arch-Based Distro.** If you want to install it in any other Distro, you need to type your distro's suitable Command. 


### Download KDE Plasma and SDDM.

(Optional) To get the best experience, it is recommended to first install KDE Plasma and SDDM if not installed, So that you can have all the tools for the best experience and have good quality on apps (Like Dolphin, Kate, Ark etc.) and change their themes too.

You can download it with this command:

``` bash
sudo pacman -S plasma plasma-meta xorg sddm kde-applications
```

### 1. Download Required Packages

To ensure smooth functioning of Hyprland, it is suggested to first run this command on Arch Linux (Or any other Arch Based Distro) to download the required packages/dependencies.

``` bash
sudo pacman -S hyprland rofi hyprpaper waybar dolphin firefox cliphist konsole btop pulsemixer vim ttf-jetbrains-mono-nerd
```

### 2. Clone the Repository

Ensure you have "Git" Package installed by this command (Any Distro) :

``` bash
git --version
```

If it returns an error like Command Not Found, Then run this Command to install it:

``` bash
sudo pacman -S git
```

Then Clone the Repository with This Command:

``` bash
git clone https://github.com/mananbinjavaid/hyprland-dots.git
```

### 3. Move the Files

In the same Directory where you ran the previous command to clone the repository, go to the folder named "hyprland-dots".
Inside it, go to a Directory/Folder named ".config" (If you're using a GUI File Manager like Dolphin, it is likely that hidden files and enabled, disable it to see the .config directory/folder).
Copy the Folders named "hypr", "waybar", and "rofi".
Then, Paste them to ~/.config/

### 4. Finished

If you did these steps correctly, then Hyprland should run with the dotfiles. Logout of your Other DE (Desktop Environment) or WM (Window Manager), and Log in to Hyprland.

## Credits

I will like to mention that the Rofi and Waybar Configuration were Originally By Stephen Raabe (ML4W / MyLinuxForWork) Hyprland Starter, and I have modified the Waybar to make it better and have changed the margin of Rofi.

[https://github.com/mylinuxforwork/hyprland-starter](https://github.com/mylinuxforwork/hyprland-starter)
