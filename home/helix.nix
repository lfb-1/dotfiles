{ pkgs, ... }: {
  programs.helix = {
    enable = true;
    settings = {
      theme = "gruvbox";
      editor.cursor-shape = {
        insert = "bar";
        normal = "block";
        select = "underline";
      };
      keys.insert = {
        j.k = "normal_mode";
      };
    };
  };
}
