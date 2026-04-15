{ ... }:

{
  programs.ssh = {
    enable = true;
    addKeysToAgent = "yes";
    compression = true;
    controlMaster = "auto";
    controlPersist = "10m";
    forwardAgent = false;
    serverAliveInterval = 60;
    serverAliveCountMax = 3;

    matchBlocks = {
      "github.com" = {
        hostname = "github.com";
        user = "git";
        identityFile = "~/.ssh/github";
        identitiesOnly = true;
      };
    };
  };
}
