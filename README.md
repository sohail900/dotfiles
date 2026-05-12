# 🛠️ Dotfiles

Welcome to my collection of dotfiles, crafted for my daily workflow with **Neovim** and **tmux**. This repo is a living project, regularly updated as I refine my setup. Feel free to explore and adapt anything useful for your own environment! 🌟

## 🚀 Features

- **Neovim with LazyVim**: A customized [LazyVim](https://github.com/LazyVim/LazyVim) setup with hand-picked plugins for efficient coding. 💻
- **tmux Configuration**: Streamlined keybindings and layouts for seamless terminal multiplexing. 🖼️
- **Workflow Tweaks**: Personalized settings to boost productivity and streamline tasks. ⚙️

## 📦 Setup Instructions

1. **Neovim**:
   - Install [LazyVim](https://lazyvim.github.io/installation).
   - Clone this repo:
     ```bash
     git clone https://github.com/sohail900/dotfiles.git ~/.config/nvim
     ```
   - Run `nvim` to sync plugins automatically.
2. **tmux**:
   - Copy `.tmux.conf` to `~/.tmux.conf`.
   - Apply settings with:
     ```bash
     tmux source ~/.tmux.conf
     ```

## 🔧 Customization

- Check `init.lua` for Neovim configurations.
- Explore `.tmux.conf` for tmux keybindings and tweaks.
- Visit [LazyVim Docs](https://lazyvim.github.io/) for deeper customization.

## 📜 License

MIT License - free to use, modify, and share! ✨
