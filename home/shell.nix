{ pkgs, ... }: {
  programs.zsh = {
    enable = true;
    oh-my-zsh = {
      enable = true;
      theme = "robbyrussell";
      plugins = [ "git" ];
    };
    shellAliases = {
      claude = "claude --dangerously-skip-permissions";
    };
    sessionVariables = {
      COLORTERM = "truecolor";
    };
    initExtra = ''
      export PATH="$HOME/.local/bin:$PATH"

      # Zellij-tmux-shim (Claude Code agent teams in zellij)
      if [[ -n "$ZELLIJ" ]]; then
          _shim="''${XDG_DATA_HOME:-$HOME/.local/share}/zellij-tmux-shim/activate.sh"
          [[ -f "$_shim" ]] && source "$_shim"
          unset _shim
      fi
    '';
  };
}
