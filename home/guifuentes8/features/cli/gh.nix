{ pkgs, ... }: {
  imports = [ ];

  programs = {
    gh = {
      enable = true;
      gitCredentialHelper.enable = true;
      settings.git_protocol = "https";
      extensions = [ pkgs.gh-eco ];
    };
    gh-dash = { enable = true; };

  };
}
