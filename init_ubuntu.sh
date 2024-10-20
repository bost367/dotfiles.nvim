#!/bin/bash

setup_color() {
  FMT_YELLOW=$(printf '\033[33m')
  FMT_RESET=$(printf '\033[0m')
  FMT_BOLD=$(printf '\033[1m')
}

update_pakages() {
  # Upgrade packages
  apt-get -q update && apt-get -yq upgrade
  # Installing Complete Multimedia Support 
  apt-get -yq install ubuntu-restricted-extras 
}

# Need to be install primarily: the required by other tools.
setup_required_cli() {
  printf "%s\n" "${FMT_YELLOW}Install required CLIs${FMT_RESET}"
  apt-get -yq install \
    curl \
    git \
    wget
}

setup_zsh() {
  printf "%s\n" "${FMT_BOLD}${FMT_YELLOW}Setup zsh.${FMT_RESET}"
  export ZDOTDIR="$HOME/.config/zsh"
  export SHARE_FOLDER="/usr/local/share"
  apt-get -yq install zsh

  # Change default zsh directory. All main files will be stored
  # in custom directory exept .zshenv: it points to .zshrc and
  # load defined variables from .zshenv.
  cat <<'EOF' >|~/.zshenv
export ZDOTDIR=~/.config/zsh
[[ -f $ZDOTDIR/.zshenv ]] && . $ZDOTDIR/.zshenv
EOF

  # Save the terminal space on enter
  # https://askubuntu.com/questions/1492841/how-to-disable-daily-message-in-ubuntu-22-04-3-lts-message-of-the-day-motd
  # https://stackoverflow.com/questions/15769615/remove-last-login-message-for-new-tabs-in-terminal
  touch .hushlogin

  # Make zsh default
  chsh -s "$(which zsh)"

  # Install commands autocompletition
  # https://github.com/zsh-users/zsh-autosuggestions
  git clone https://github.com/zsh-users/zsh-autosuggestions ${SHARE_FOLDER}/zsh/zsh-autosuggestions
  echo "source ${SHARE_FOLDER}/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >> "${ZDOTDIR:-$HOME}/.zshrc"

  # Install commands highlighting.
  # Enable highliting whilst they are typed at a zsh.
  # This helps in reviewing commands before running them.
  # https://github.com/zsh-users/zsh-syntax-highlighting
  git clone https://github.com/zsh-users/zsh-syntax-highlighting ${SHARE_FOLDER}/zsh/zsh-syntax-highlighting
  echo "source ${SHARE_FOLDER}/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> "${ZDOTDIR:-$HOME}/.zshrc"
}

# Such toolchains requires bash/zsh file modification.
setup_toolcahins() {
  # Install Rust. Cargo also is used to install some pakages.
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
  rustup update
  
  # Install Golang. Go also is is used to install some pakages. 
  export GOLANG_VERSION="1.23.2"
  wget -q "https://go.dev/dl/go${GOLANG_VERSION}.linux-$(dpkg --print-architecture).tar.gz"
  # Remove any previous Go installation and install go
  rm -rf /usr/local/go && tar -C /usr/local -xzf "go${GOLANG_VERSION}.linux-$(dpkg --print-architecture).tar.gz"
  export PATH=$PATH:/usr/local/go/bin

  # Install npm. Go also is is used to install some pakages.
  apt-get -yq install nodejs
  apt-get -yq install npm
}

setup_neovim() {
  printf "%s\n" "${FMT_YELLOW}Install Neovim${FMT_RESET}"
  # apt insltlls old verion of vim. snap conteins fresh release.
  snap install --classic nvim

  # xclip - for share clipboard between nvim and OS
  # npm is used by mason during LSP some instalation
  apt-get -yq install \
    xclip \
    shellcheck
  
  cargo -q install --locked stylua # Lua formatter
  go install github.com/mikefarah/yq/v4@latest # YAML formatter
}

setup_tui() {
  # eza - etter ls
  # starship - eautify prompt for terminal input
  printf "%s\n" "${FMT_YELLOW}Install TUI CLIs${FMT_RESET}"
  cargo -q install --locked \
    yazi-fm \
    yazi-cli \
    zellij \
    eza \
    starship
  
  go install \
    github.com/jesseduffield/lazygit@latest \
    github.com/jesseduffield/lazydocker@latest
  
  # btop - better htop
  snap install --classic \
    alacritty \
    btop
}

install_nerd_fonts() {
  printf "%s\n" "${FMT_YELLOW}Install Nerd Fonts${FMT_RESET}"
  git clone https://github.com/ryanoasis/nerd-fonts.git
  cd nerd-fonts
  sh install.sh JetBrainsMono
  cd .. && rm -rf nerd-fonts
}

install_gui() {
  printf "%s\n" "${FMT_YELLOW}Install GUI application${FMT_RESET}"
  snap install --classic \
    telegram \
    postman
}

clean_trash() {
  apt-get autoclean
  apt-get clean -yq
}

# Order matters: some functions install cli which requered by the next installations.
main() {
  setup_color
  update_pakages
  setup_required_cli
  setup_zsh
  setup_toolcahins
  setup_neovim
  setup_tui
  install_nerd_fonts
  install_gui
  clean_trash
}

main
# TODO:
# - setup git config --global user.name & user.email
# - setup ssh key and publish public key on github
# - Try flatpack
# - Personalyze workstation
# - Battary optimization
