{ pkgs, ... }: {
  programs.git = {
    enable = true;
    settings.user.name = "fbl";
    # credential helpers are set automatically by programs.gh.gitCredentialHelper
    includes = [
      { path = "~/.config/git/local.gitconfig"; }  # machine-local secrets (overleaf token, email, etc.)
    ];
  };

  programs.gh = {
    enable = true;
    gitCredentialHelper.enable = true;
    settings = {
      git_protocol = "https";
      prompt = "enabled";
      aliases = {
        co = "pr checkout";
      };
    };
  };
}
