{ pkgs, ... }: {
  programs.git = {
    enable = true;
    settings.user.name = "fbl";
    # credential helpers are set automatically by programs.gh.gitCredentialHelper
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
