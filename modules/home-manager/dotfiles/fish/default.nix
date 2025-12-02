{ config, pkgs, ... }:

{
  programs.fish = {
    enable = true;
    shellAliases = {
      nv = "nvim";
      ip = "ip -c";
    };
    plugins = [
      {
        name = "z";
        src = pkgs.fishPlugins.z.src;
      }
      {
        name = "fish-ssh-agent";
        src = pkgs.fetchFromGitHub {
          owner = "danhper";
          repo = "fish-ssh-agent";
          rev = "f10d95775352931796fd17f54e6bf2f910163d1b";
          sha256 = "sha256-cFroQ7PSBZ5BhXzZEKTKHnEAuEu8W9rFrGZAb8vTgIE=";
        };
      }
    ];
  };

  home = {
    file = {
      fish_prompt = {
        source = ./fish_prompt.fish;
        target = ".config/fish/functions/fish_prompt.fish";
      };
      fish_right_prompt = {
        source = ./fish_right_prompt.fish;
        target = ".config/fish/functions/fish_right_prompt.fish";
      };
      scheme = {
        source = ./scheme.fish;
        target = ".config/fish/functions/scheme.fish";
      };
    };
  };
}
