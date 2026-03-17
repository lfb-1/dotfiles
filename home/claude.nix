{ config, ... }:
let
  homeDir = config.home.homeDirectory;
  hookPath = "${homeDir}/.config/zellij/plugins/zellaude-hook.sh";
  hookEntry = {
    hooks = [{
      type = "command";
      command = hookPath;
      timeout = 5;
      async = true;
    }];
  };
in {
  home.file.".claude/settings.json".text = builtins.toJSON {
    env.CLAUDE_CODE_EXPERIMENTAL_AGENT_TEAMS = "1";
    permissions.allow = [
      "WebSearch"
      "WebFetch"
      "mcp__tavily-remote-mcp__tavily-search"
      "mcp__tavily-remote-mcp__tavily-extract"
    ];
    hooks = {
      PreToolUse = [ hookEntry ];
      PostToolUse = [ hookEntry ];
      PostToolUseFailure = [ hookEntry ];
      UserPromptSubmit = [ hookEntry ];
      PermissionRequest = [ hookEntry ];
      Notification = [ hookEntry ];
      Stop = [ hookEntry ];
      SubagentStop = [ hookEntry ];
      SessionStart = [ hookEntry ];
      SessionEnd = [ hookEntry ];
    };
    enabledPlugins = {
      "superpowers@claude-plugins-official" = true;
      "claude-md-management@claude-plugins-official" = true;
      "skill-creator@claude-plugins-official" = true;
    };
    effortLevel = "high";
    skipDangerousModePermissionPrompt = true;
  };
}
