-----------------------------------------
Dotfiles Setup Guide
-----------------------------------------

**Used Colorscheme and GTK Theme:** 
- Catppuccin
  - GitHub Repository: [Catppuccin](https://github.com/catppuccin/catppuccin)

**Script for Canva:** 
- Caway
  - GitHub Repository: [Caway](https://github.com/PROxZIMA/caway)

**Preview:** 
Example Image (./.assets/example.png)

**Packages:**
**Required:**
1. Dunst - A lightweight notification daemon.
2. Playerctl - Command-line utility to control media players.
3. Fuzzel - Custom script or application (GitHub link not provided).
4. Waybar - A highly customizable Wayland bar for Sway.
5. (Anything else you forgot)

**Optional:**
1. Variety - Wallpaper changer. (custom script included)
2. Swaybg - Background setter for Sway. (needed for Variety)
3. Pcmanfm - Lightweight file manager (You can change this in the hyprland config).
4. Gtk-lock - Screen locker for GTK-based environments (you can also change this to hyprlock or swaylock in the hyprland config).
5. Flameshot - Screenshot utility. (you can also change this in the config)
6. Waybar - A highly customizable Wayland bar for Sway.

**Instructions:**
1. To install the required packages, use the following command:
   ```
   yay -S dunst playerctl waybar (add any other required packages)
   ```
2. Then, run the following commands:
   ```
   wget https://github.com/gruensys/dotfiles/
   cp -r dotfiles/* $HOME/
   chmod +x $HOME/script/*
   rm -rf $HOME/.assets/*
   ```

If you have issues installing, feel free to contact me via one of the accounts linked on my GitHub page. Also, feel free to edit, share, and contribute!
