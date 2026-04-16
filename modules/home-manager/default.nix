{
  pkgs,
  lib,
  ...
}:

{
  imports = [
    ./dotfiles/fish
    ./dotfiles/git
    ./dotfiles/ghostty
  ];

  home.stateVersion = "25.11";

  home.homeDirectory = lib.mkForce "/Users/nusk";

  home.sessionVariables = {
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

  home.packages = with pkgs; [
    ripgrep
    claude-code
    fd
    curl
    less
    gh
    pv
    ffmpeg
    nil
    nixfmt
    nixd
    fastfetch
    neovim
    ghostty-bin
  ];

  programs.home-manager.enable = true;

  programs.jq.enable = true;
  programs.command-not-found.enable = true;
  programs.htop.enable = true;
  programs.info.enable = true;

  programs.dircolors = {
    enable = true;
    enableFishIntegration = true;
    enableZshIntegration = true;
  };

  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
    enableFishIntegration = true;
  };

  programs.direnv = {
    enable = true;
    nix-direnv = {
      enable = true;
    };
  };
}
