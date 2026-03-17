{ pkgs, ... }: {
  imports = [
    ./shell.nix
    ./git.nix
    ./ssh.nix
    ./helix.nix
    ./neovim.nix
    ./zellij
    ./claude.nix
    ./dev.nix
  ];

  home.username = "fbl";
  home.homeDirectory = "/home/fbl";
  home.stateVersion = "24.11";
  programs.home-manager.enable = true;
}
