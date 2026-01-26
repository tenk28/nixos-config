{ stateVersion, user, ... }: {
  imports = [
    ./home-packages.nix
    ./modules
  ];

  home = {
    username = user;
    homeDirectory = "/home/${user}";
    stateVersion = stateVersion;
  };
}
