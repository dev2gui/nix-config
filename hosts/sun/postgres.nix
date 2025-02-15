{ pkgs, ... }: {
  services.postgresql = {
    enable = true;
   # package = pkgs.postgresql_15;
    ensureDatabases = [ "nextcloud" "postgres" ];
    enableTCPIP = true;
    authentication = pkgs.lib.mkOverride 10 ''
      local all      all    trust
      # ipv4
      host  all      all     127.0.0.1/32   trust
      host  all	     all     192.168.1.10/24 trust
      # ipv6
      host all       all     ::1/128        trust
    '';
  };
  systemd.services."nextcloud-setup" = {
    requires = [ "postgresql.service" ];
    after = [ "postgresql.service" ];
  };

}
