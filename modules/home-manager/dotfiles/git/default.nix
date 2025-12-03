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
      commit.template = "./commit_template";
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
}
