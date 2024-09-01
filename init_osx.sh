#!/bin/bash

setup_color() {
  FMT_YELLOW=$(printf '\033[33m')
  FMT_RESET=$(printf '\033[0m')
  FMT_BOLD=$(printf '\033[1m')
}

setup_homebrew() {
  if ! type "$brew -v" > /dev/null; then
    echo "${FMT_YELLOW}Brew is already installed.${FMT_RESET}"
  else
    echo "${FMT_YELLOW}Homebrew not found in system.${FMT_YELLOW}"
      /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  fi
}

# Need to be install primarily: the required by other tools.  
setup_required_cli() {
  printf "%s\n" "${FMT_YELLOW}Install required CLIs${FMT_RESET}"
  brew install \
    curl \
    git \
    wget
}

setup_zsh() {
  printf "%s\n" "${FMT_BOLD}${FMT_YELLOW}Setup zsh.${FMT_RESET}"
  export ZDOTDIR="$HOME/.config/zsh"
  brew install zsh

  # Change default zsh directory. All main files will be stored 
  # in custom directory exept .zshenv: it points to .zshrc and 
  # load defined variables from .zshenv.  
  cat << 'EOF' >| ~/.zshenv
export ZDOTDIR=~/.config/zsh
[[ -f $ZDOTDIR/.zshenv ]] && . $ZDOTDIR/.zshenv
EOF

  printf "%s\n" "${FMT_BOLD}${FMT_YELLOW}Setup oh-my-zsh and its plugins.${FMT_RESET}"
  # Instalation script respects variable set (details in documentation inside script).
  # Whether run zsh after the install. Disable due installation via script.
  export RUNZSH="no"
  # Change default directory path. Needs because of plugin directory, which stores custom setting.
  export ZSH="$HOME/.config/oh-my-zsh"
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

  # Install commands autocompletition
  # https://github.com/zsh-users/zsh-autosuggestions
  brew install zsh-autosuggestions
  echo "source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
  
  # Install commands highlighting.
  # Enable highliting whilst they are typed at a zsh.
  # This helps in reviewing commands before running them.
  # https://github.com/zsh-users/zsh-syntax-highlighting
  brew install zsh-syntax-highlighting
  echo "source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc

  # Install powerline (beautify prompt for input)
  # https://github.com/romkatv/powerlevel10k
  brew install powerlevel10k
  echo "source $(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme" >>~/.zshrc
}

setup_alacritty() {
  brew install --cask alacritty
  # Install themes
  mkdir -p ~/.config/alacritty/themes
  git clone https://github.com/alacritty/alacritty-theme ~/.config/alacritty/themes
  # Install nerd fonts
  brew install --cask \
    font-jetbrains-mono \
    font-jetbrains-mono-nerd-font
}

setup_common_utilities() {
  printf "%s\n" "${FMT_YELLOW}Install common CLIs${FMT_RESET}"
  brew install \
    cloc \
    docker \
    docker-compose \
    grpcurl \
    helm \
    jq \
    kubernetes-cli \
    rustup-init \
    eza
}

setup_tui() {
  printf "%s\n" "${FMT_YELLOW}Install TUI CLIs${FMT_RESET}"
  brew install \
    derailed/k9s/k9s \
    nvim \
    lazydocker \
    lazygit \
    zellij
}

setup_gui() {
  printf "%s\n" "${FMT_YELLOW}Install GUI applications${FMT_RESET}"
  brew install --cask \
    openlens \
    postman
}

# Order matters: some functions install cli which requered by the next installations.
main() {
  setup_color
  setup_homebrew
  setup_required_cli
  setup_zsh
  setup_alacritty
  setup_common_utilities
  setup_tui
  setup_gui
}

main

