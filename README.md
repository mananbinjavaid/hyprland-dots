# Hyprland Dotfiles

Just Hyprland Dotfiles which are very Customizable. This setup is created on Arch Linux and is suitable for Arch Linux, but you can customize it to make it suitable for your linux distro too.

## Packages/Apps/Tools/Wallpaper Used

- **WM:** Hyprland
- **Terminal:** Konsole (You can change/customize it)
- **Browser:** Firefox
- **File Explorer:** Dolphin
- **Status Bar:** Waybar
- **Application Launcher:** Rofi
- **Wallpaper:** KDE Plasma's Mountain Dark (Already included in Dotfiles: `~/.config/hypr/wallpapers/wallpaper.png`)
- **Volume Controller:** PulseMixer
- **System Monitor:** btop++
- **Key Binds:** Included at the 2nd Last Section.

## Installation

To install and use these dotfiles, follow these steps:

### IMPORTANT: Before Installing

Before Installing, it is always recommended to take a **Backup of your Dotfiles**. As this installtion will delete your previous dotfiles (hypr, waybar, rofi Folder/Directory) in ~/.config/.

Please NOTE That :

**All the Commands in this README will only work on Arch Linux or any Arch-Based Distro.** If you want to install it in any other Distro, you need to type your distro's suitable Command. 

### Download KDE Plasma and SDDM (Skip This Step if Already Installed)

(Optional But Very Recommended) To get the best experience, it is recommended to first install KDE Plasma and SDDM if not installed, So that you can have all the tools for the best experience and have good quality on apps (Like Dolphin, Kate, Ark etc.) and change their themes too.

You can download it with this command:

``` bash
sudo pacman -S plasma plasma-meta xorg sddm kde-applications
```

**NOTE on SDDM:** While Hyprland does not strictly require a Display Manager, SDDM is the recommended and easiest way to ensure Hyprland starts correctly and gives you a simple graphical login/session selector.

To Enable SDDM, First you need to disable your Previous Greeter. Run this command to disable your Previous Greeter, Enable SDDM, and immediately go to it **(Replace "PreviousGreeter" with your greeter such as GDM)**:

``` bash
sudo systemctl disable PreviousGreeter
sudo systemctl enable --now sddm
```

You should now be in the SDDM Greeter/Desktop Manager.

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

Make sure that you are in the same directory where you ran the previous `git clone` command. This command will first **delete** any existing configurations you may have (as warned above).

``` bash
rm -rf ~/.config/hypr ~/.config/waybar ~/.config/rofi
cd hyprland-dots
cp -r .config/{hypr,waybar,rofi} ~/.config/
```

If you want to move the files with a GUI File Manager, here is how to do it:

Navigate to the hyprland-dots folder. Inside it, go to a Directory/Folder named ".config" (If you're using a File Manager like Dolphin, it is likely that hidden files and enabled, disable it to see the .config directory/folder).

Copy the Folders named "hypr", "waybar", and "rofi".
Then, Paste them to ~/.config/

### 4. Post-Installtion

If you did these steps correctly, then Hyprland should run with the dotfiles. Logout of your Other DE (Desktop Environment) or WM (Window Manager), and Log in to Hyprland.

Then, after it is installed, You need to provide permission to Reload Waybar. You can do it by running this command in a terminal (e.g. Konsole):

``` bash
chmod +x ~/.config/hypr/scripts/reload-waybar.sh
```

### Full Installation Finished

You can now enjoy Hyprland :)

## Key Binds

Also Mentioned in `~/.config/hypr/mainfiles/keybinds.conf`.

**NOTE:** SUPER = Windows Key

- **Open Terminal (Konsole):** SUPER + Return (Enter Key)
- **Open Application Launcher (Rofi):** Alt + Space
- **Close Apps:** Alt + F4
- **Exit/Logout Hyprland:** SUPER + M
- **Open File Manager (Dolphin):** SUPER + E
- **Reload Waybar:** SUPER + Shift + B
- **Switch Workspaces:** SUPER + 1-5 (Only 5 Workspaces Configured In Hypr Config and Waybar. You can Increase It)
- **Switch Workspaces with Mouse:** SUPER + Mouse Scroll
- **Move Apps to Different Workspaces:** SUPER + SHIFT + 1+5 (While The App to Shift is Selected/Hovered. 5 Workspaces Button in Waybar. You can Increase It)
- **Move Focus To Left/Right/Top/Bottom App:** SUPER + LeftArrow/RightArrow/UpArrow/DownArrow
- **Move Windows:** SUPER + LMB (Left Mouse Button)
- **Resize Windows:** SUPER + RMB (Right Mouse Button) + Mouse Dragging

## Credits

I will like to mention that the Rofi and Waybar Configuration were Originally By [Stephen Raabe (ML4W / MyLinuxForWork)](https://github/com/mylinuxforwork/) Hyprland Starter, and I have modified the Waybar to make it better and have changed the margin of Rofi.

[https://github.com/mylinuxforwork/hyprland-starter](https://github.com/mylinuxforwork/hyprland-starter)
