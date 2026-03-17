{ pkgs, ... }: {
  home.packages = with pkgs; [
    # Languages
    python3
    nodejs_22

    # LaTeX
    texlive.combined.scheme-full

    # CLI tools
    ripgrep
    fd
    jq
    tree
    htop
    wget
    curl
    unzip

    # Cloud / remote
    tailscale
    rclone
  ];
}
