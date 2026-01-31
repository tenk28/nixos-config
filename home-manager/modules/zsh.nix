{
  programs.zsh = {
    enable = true;
    shellAliases = let
      flakeDir = "~/flake";
    in {
      ll = "ls -lh --time-style=+\"[%d-%m-%Y %H:%M:%S]\"";
      v = "nvim";
      r = "ranger";
      rebuild = "sudo nixos-rebuild switch --flake ${flakeDir}";
    };
  };
}
