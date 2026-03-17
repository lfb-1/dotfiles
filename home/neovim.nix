{ pkgs, ... }: {
  programs.neovim = {
    enable = true;
    defaultEditor = true;
  };

  # TODO: migrate nvim lua config into this repo under home/nvim/
  # For now, nvim config is manually managed at ~/.config/nvim/
}
