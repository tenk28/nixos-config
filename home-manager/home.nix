{ stateVersion, username, ... }: {
  imports = [
    ./home-packages.nix
    ./modules
  ];

  home = {
    inherit username stateVersion;
    homeDirectory = "/home/${username}";
  };

  programs.home-manager.enable = true;
}
