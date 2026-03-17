{ pkgs, config, ... }:
let
  hookScript = ../../scripts/zellaude-hook.sh;
in {
  programs.zellij = {
    enable = true;
  };

  # Copy the raw KDL config (too complex for Nix native)
  xdg.configFile."zellij/config.kdl".source = ./config.kdl;

  # Install the zellaude hook script
  xdg.configFile."zellij/plugins/zellaude-hook.sh" = {
    source = hookScript;
    executable = true;
  };
}
