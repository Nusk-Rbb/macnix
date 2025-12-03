{ pkgs, config, ... }:

{
  imports = [
    ./dotfiles/fish
    ./dotfiles/git
    ./dotfiles/alacritty
    # ./dotfiles/fastfetch
  ];

  home = {
    stateVersion = "25.05";
    sessionVariables = {
      LANG = "en_US.UTF-8";
      LC_CTYPE = "en_US.UTF-8";
      LC_ALL = "en_US.UTF-8";
      EDITOR = "nvim";
      PAGER = "less -FirSwX";
      SHELL = "fish";
      CLICLOLOR = 1;
      # MANPAGER = "nvim -c 'set ft=man' -";
      TERM = "xterm-256color";
    };

    packages = with pkgs; [
      ripgrep
      fd
      curl
      less
      gh
      pv
      ffmpeg
      nixfmt
      neovim
    ];
  };

  programs = {
    jq.enable = true;
    command-not-found.enable = true;
    htop.enable = true;
    info.enable = true;

    dircolors = {
      enable = true;
      enableFishIntegration = true;
      enableZshIntegration = true;
    };

    fzf = {
      enable = true;
      enableZshIntegration = true;
      enableFishIntegration = true;
    };

    direnv = {
      enable = true;
      nix-direnv = {
        enable = true;
      };
    };
  };
#  home.file.".inputrc".source = ./dotfiles/inputrc;
}
