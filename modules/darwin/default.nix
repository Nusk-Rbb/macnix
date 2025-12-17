{ pkgs, config, ... }:

{
  nix.enable = true;

  ids.gids.nixbld = 350;

  users = {
    users = {
      nusk = {
        shell = pkgs.fish;
        home = "/Users/nusk"; # Replace USER_NAME with your username
      };
    };
  };

  programs = {
    fish.enable = true;
  };

  environment = {
    shells = with pkgs; [
      bash
      zsh
      fish
    ];
    systemPackages = [ pkgs.coreutils ];
    systemPath = [ "/opt/homebrew/bin" ];
    pathsToLink = [ "/Applications" ];
  };

  fonts = {
    packages = with pkgs; [
      nerd-fonts.symbols-only
      nerd-fonts.iosevka
      nerd-fonts.fira-code
    ];
  };

  nix.extraOptions = ''
    experimental-features = nix-command flakes
  '';

  system.keyboard = {
    enableKeyMapping = true;
    remapCapsLockToEscape = true;
  };

  # backwards compatibility; don't change
  system.stateVersion = 4;

  home-manager.backupCommand = "${pkgs.trash-cli}/bin/trash";
}
