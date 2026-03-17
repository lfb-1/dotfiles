{ ... }: {
  programs.ssh = {
    enable = true;
    matchBlocks = {
      "fbl-a6k" = {
        hostname = "100.107.13.16";
        user = "fbl";
        identityFile = "~/.ssh/id_ed25519";
        forwardAgent = true;
      };
      "unicorn" = {
        hostname = "unicorn-login-04.coecis.cornell.edu";
        user = "fl453";
        proxyJump = "fbl-a6k";
      };
      "empireai" = {
        hostname = "alpha.empire-ai.org";
        user = "fl453";
        identityFile = "~/.ssh/id_ed25519";
      };
      "cornell-vm" = {
        hostname = "faz9016.tailffed44.ts.net";
        user = "azureuser";
      };
    };
  };
}
