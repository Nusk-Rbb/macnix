# fastfetch.nix
{ config, lib, pkgs, ... }:

let
  # fastfetchの設定内容を文字列として定義
  # 埋め込みコメントは削除して純粋なJSONにしています
  configFileContent = ''
    {
        "$schema": "https://github.com/fastfetch-cli/fastfetch/raw/dev/doc/json_schema.json",
        "logo": {
            "padding": {
                "top": 2,
                "right": 6
            }
        },
        "display": {
            "separator": " "
        },
        "modules": [
            "break",
            "break",
            {
                "type": "title",
                "keyWidth": 10
            },
            "break",
            {
                "type": "cpu",
                "key": " ",
                "keyColor": "33"
            },
            {
                "type": "gpu",
                "key": "󰢮 ",
                "keyColor": "33"
            },
            {
                "type": "os",
                "key": " ",
                "keyColor": "33"
            },
            {
                "type": "kernel",
                "key": " ",
                "keyColor": "33"
            },
            {
                "type": "packages",
                "key": " ",
                "keyColor": "33"
            },
            {
                "type": "shell",
                "key": " ",
                "keyColor": "33"
            },
            {
                "type": "terminal",
                "key": " ",
                "keyColor": "33"
            },
            {
                "type": "memory",
                "key": " ",
                "keyColor": "33"
            },
            {
                "type": "swap",
                "key": " ",
                "keyColor": "33"
            },
            {
                "type": "de",
                "key": "󰇄 ",
                "keyColor": "33"
            },
            {
                "type": "wm",
                "key": " ",
                "keyColor": "33"
            },
            {
                "type": "uptime",
                "key": " ",
                "keyColor": "33"
            },
            {
                "type": "media",
                "key": "󰝚 ",
                "keyColor": "33"
            },
            "break",
            "colors",
            "break",
            "break"
        ]
    }
  '';

  # 設定ファイルをNixストアに書き出し、パスを取得します
  configFile = pkgs.writeText "fastfetch-config.jsonc" configFileContent;

in
{
  # Home Managerの設定を定義
  programs.fastfetch = {
    enable = true;
    
    # Home Managerの fastfetch モジュールを通じて、Nixストアのファイルを
    # ユーザーの fastfetch 設定ファイルとしてシンボリックリンクします
    configFile = configFile;
  };
}
