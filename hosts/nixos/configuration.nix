{ stateVersion, hostname, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./system-packages.nix
    ../../nixos/modules
  ];

  networking.hostName = hostname;

  system.stateVersion = stateVersion;
}
