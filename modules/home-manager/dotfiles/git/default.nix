{ pkgs, lib, config, ... }:

{
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "Nusk-Rbb";
        email = "nuskrbb1741dn@gmail.com";
      };
      init = { defaultBranch = "main"; };
      core = {
        editor = "vim";
      };
      commit.template = "~/.config/github/commit_template";
    };


    ignores = [
      ".DS_Store" # macOS metadata
      "*.swp" # Vim swap files
      ".env" # Environment variables
      ".direnv" # Direnv cache
      "node_modules" # Node.js dependencies
      ".vscode" # VS Code settings
      ".idea" # IntelliJ settings
    ];
  };

  home = {
    file = {
    	".config/github/commit_template".source = ./commit_template;
    };
  };
}
