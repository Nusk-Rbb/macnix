{ config, pkgs, ... }:

{
  programs.alacritty = {
    enable = true;
    settings = {
      shell.program = "${pkgs.fish}/bin/fish";
      env = {
        "TERM" = "xterm-256color";
      };
      window = {
        padding = {
          x = 10;
          y = 10;
        };
        decorations = "Full";
      };
      font = {
        normal = {
          family = "FiraCode Nerd Font";
          style = "Regular";
        };
      };
      window.opacity = 0.7;
    };

  };
}
