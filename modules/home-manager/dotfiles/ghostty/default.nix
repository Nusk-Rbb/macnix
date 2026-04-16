{ pkgs, ... }:

{
  programs.ghostty = {
    enable = true;
    package = pkgs.ghostty-bin;
    settings = {
      theme = "Idle Toes";
      font-family = "FiraCode Nerd Font";
      command = "/etc/profiles/per-user/nusk/bin/fish";
      background-opacity = 0.5;
    };
  };
}
