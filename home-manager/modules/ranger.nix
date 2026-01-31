{
  programs.ranger = {
    enable = true;
    mappings = {
      e = "edit";
    };

    settings = {
      draw_borders = true;
    };

    extraConfig = ''
      default_linemode devicons
    '';

    plugins = [
      {
        name = "ranger-devicons";
        src = builtins.fetchGit {
          url = "https://github.com/alexanderjeurissen/ranger_devicons";
          ref = "main";
          rev = "1bcaff0366a9d345313dc5af14002cfdcddabb82";
        };
      }
    ];
  };
}
