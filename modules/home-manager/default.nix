{ pkgs, ... }:

{
  imports = [
    ./dotfiles/fish
    ./dotfiles/git
    ./dotfiles/github
    ./dotfiles/ssh
    ./dotfiles/ghostty
    ./dotfiles/fonts
  ];

  nixpkgs.config.allowUnfree = true;

  home.stateVersion = "25.05";

  home.sessionVariables = {
    LANG = "en_US.UTF-8";
    LC_CTYPE = "en_US.UTF-8";
    LC_ALL = "en_US.UTF-8";
    EDITOR = "nvim";
    PAGER = "less -FirSwX";
    SHELL = "fish";
    CLICLOLOR = 1;
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
    fastfetch
    neovim
  ];

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
    nix-direnv.enable = true;
  };
}
