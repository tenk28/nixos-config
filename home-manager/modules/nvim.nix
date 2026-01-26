{
  programs.neovim = {
    enable = true;
    extraConfig = ''
      set ruler
      syntax enable
      set expandtab

      set shiftwidth=2
      set tabstop=2

      set ai
      set si
      set nowrap
      set colorcolumn=80

      set number

      set listchars=tab:→·,space:·,trail:•,extends:»,precedes:«,nbsp:␣
      set list
    '';
  };
}
