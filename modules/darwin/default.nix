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

  nix.extraOptions = ''
    experimental-features = nix-command flakes
  '';

  system.keyboard = {
    enableKeyMapping = true;
    remapCapsLockToEscape = true;
  };

  # backwards compatibility; don't change
  system.stateVersion = 4;
}
