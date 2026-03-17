{ pkgs, ... }: {
  wsl = {
    enable = true;
    defaultUser = "fbl";
    startMenuLaunchers = true;
    wslConf.automount.root = "/mnt";
  };

  users.users.fbl = {
    isNormalUser = true;
    shell = pkgs.zsh;
    extraGroups = [ "wheel" ];
  };
  programs.zsh.enable = true;

  time.timeZone = "America/New_York";
  i18n.defaultLocale = "en_US.UTF-8";

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # Enable nix-ld for running pre-built binaries (Claude Code, etc.)
  programs.nix-ld.enable = true;

  environment.systemPackages = with pkgs; [
    git
    vim
    wget
    curl
  ];

  system.stateVersion = "24.11";
}
