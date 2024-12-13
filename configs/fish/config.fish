fish_vi_key_bindings

# Customize the shell
set fish_greeting "🐟"

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Set universal variables
set -U EDITOR nvim

# User specific environment
if not contains "$HOME/.local/bin" $PATH
  set -gx PATH "$HOME/.local/bin" $PATH
end

if not contains "$HOME/bin" $PATH
  set -gx PATH "$HOME/bin" $PATH
end

# Enable Vi-mode keybindings
set fish_vi_key_bindings

# Create custom abbreviations
abbr reload 'source ~/.config/fish/config.fish'
abbr nvim-ks 'NVIM_APPNAME="kickstart" nvim'
abbr nvim-astro 'NVIM_APPNAME="AstroNvim" nvim'
abbr nvim-chad 'NVIM_APPNAME="NvChad" nvim'
#abbr bs "brew search"
#abbr ll "ls -l"

# Load plugins
#source ~/.config/fish/plugins/fisher.fish
#fisher install jorgebucaran/fisher

starship init fish | source

# Set startup directory
cd ~/

# Run sponge plugin
#abbr sponge "sponge"
