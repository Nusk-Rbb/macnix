{ pkgs, ... }:

{
  programs.ghostty = {
    enable = true;
    package = pkgs.ghostty-bin;
    settings = {
      theme = "Idle Toes";
      font-family = "FiraCode Nerd Font";
      command = "${pkgs.fish}/bin/fish";
      background-opacity = 0.5;
    };
  };
}
