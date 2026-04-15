{ ... }:

{
  programs.ghostty-bin = {
    enable = true;
    settings = {
      term = "xterm-256color";
      font-family = "FiraCode Nerd Font";
      command = "/etc/profiles/per-user/nusk/bin/fish";
      background-opacity = 0.7;
      window-padding-x = 10;
      window-padding-y = 10;
    };
  };
}
