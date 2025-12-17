# home-manager/dotfiles/fonts/default.nix
#
# Font Configuration & Management (Homebrew-Consolidated)
#
# Purpose:
# - Configures font rendering and fallbacks for Homebrew-installed fonts
# - Provides font aliases and substitutions
# - Manages font-related environment variables
#
# Philosophy:
# - ALL fonts installed via Homebrew for better macOS integration
# - This module only handles configuration, not installation
# - Focuses on font rendering optimization and fallbacks
#
# Homebrew Fonts Managed:
# - Iosevka Nerd Font (clean)
# - Symbols Only Nerd Font (clean)
#
# Integration:
# - Works with Stylix (uses system fonts)
# - Optimized for Alacritty terminal
# - Supports Starship prompt icons
#
# Note:
# - No packages installed here (all via Homebrew)
# - Focus on configuration and optimization
{ pkgs, config, ... }:

{
  home.packages = with pkgs; [
    nerd-fonts.iosevka
    nerd-fonts.symbols-only
  ];
}
