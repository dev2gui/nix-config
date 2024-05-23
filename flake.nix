{
  #                        Guifuentes8 Flakes
  #                           Nixos Config
  #               ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡀⠀⠀⠀⣤⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡀⠀⠀⠀⠀⠀⠀⠀
  #               ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠛⢿⣦⣤⣾⠟⠁⠀⠀⠀⠀⠀⢀⣄⠀⠀⠀⢸⣧⠀⠀⠀⠀⠀⠀⠀
  #               ⠀⠀⠀⠀⠀⠀⢠⣆⠀⠀⢀⠀⠀⠀⢀⠀⠀⢻⡿⠃⠀⣀⠀⠀⠀⠀⠀⠘⢿⣆⠀⢀⣿⣿⣶⣶⣶⣶⡆⠀⠀
  #               ⠀⠀⠀⠀⠀⠀⢸⣿⠀⠀⣼⠀⠀⠀⠻⣷⣦⣼⣧⣤⣾⠏⠀⠀⠀⠀⠀⠀⠘⣿⣴⣿⡟⠉⠉⠉⠀⠀⠀⠀⠀
  #               ⠀⠀⢠⣦⣤⣀⣸⣿⡀⢰⣿⠀⠀⠀⠀⠀⠙⢿⣿⡿⠁⠀⠀⠀⠀⠀⠀⠀⣰⣿⡿⠿⠿⠿⢿⣿⠇⠀⠀⠀⠀
  #               ⠀⠀⠈⠉⠉⠉⠛⢻⣿⣿⣿⡀⠀⠀⡀⠀⠀⢠⣿⡄⢀⡀⠀⣶⡄⠀⢀⣾⡿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
  #               ⠀⠀⠀⠀⠀⠘⠿⠟⠛⠛⠿⣷⣄⣸⡿⠒⢿⣾⣿⣷⡿⠃⠀⠹⣿⣴⣿⣯⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
  #               ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣽⣿⣿⣷⡀⠀⠈⣿⡏⠀⠀⠀⣠⣿⠿⠛⠉⠉⠀⠀⠀⠀⠀⢠⣿⠀⢀⣶⠀⠀
  #               ⠀⠀⠀⠀⠀⢠⡀⠀⠀⠀⠀⠀⠀⠈⠛⢿⣦⣄⣿⡇⠀⢀⣼⡿⠃⠀⠀⠀⢀⣴⠇⠀⠀⢰⣿⠃⣠⣿⠟⠀⠀
  #               ⢀⣀⠀⠀⠀⠹⣿⣄⠀⠀⠀⣆⠀⠀⠀⠀⠙⢿⣿⣧⣴⣿⣏⣀⣀⣀⣀⣤⣾⣿⣤⣤⣶⣿⣿⣾⣿⣧⣀⠀⠀
  #               ⠘⠻⣷⣄⣀⠀⠈⢿⣷⣄⣀⣿⣿⣦⣤⣤⣶⣾⣿⣿⣿⣿⡿⠿⠛⠛⠛⠛⠻⢿⣿⠉⠉⠻⣿⣄⡈⠙⠿⣷⡄
  #               ⠀⠀⣸⣿⡿⠿⠿⣿⣿⡿⠛⠛⣿⡿⠋⠉⢀⣾⣿⣿⠉⠻⣿⣶⣄⠀⠀⠀⠀⠀⠉⠀⠀⠀⠈⠻⣿⡆⠀⠈⠁
  #               ⠰⠿⠛⠁⠀⠀⣴⡿⠋⠀⠀⢰⢟⠁⠀⣠⣾⠋⠘⣿⠀⠀⠀⠙⢿⣷⣶⣶⣶⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
  #               ⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⠈⠻⣿⣿⣿⡇⠀⠀⣿⡆⠀⠀⠀⠈⣿⡿⢿⣧⣄⡀⠀⠀⣀⣀⡀⠀⠀⠀⠀⠀
  #               ⠀⠀⠀⠀⠀⠀⠀⠺⣶⣦⣤⣤⣴⣿⠟⣿⠇⠀⠀⣹⣇⠀⠀⠀⠀⠿⠃⠀⠹⣿⣿⣿⡿⠛⢛⣫⣶⠀⠀⠀⠀
  #               ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣩⣿⣿⡇⠀⠀⠀⣠⣼⣿⣿⣆⡀⠀⠀⠀⠀⠀⠀⣿⡏⠻⣿⡿⠟⠋⠁⠀⠀⠀⠀
  #               ⠀⠀⠀⠀⠀⢿⣿⣷⣶⣿⡿⠋⣿⠁⠀⠀⠀⠛⠉⢹⣿⠛⠛⠀⠀⠀⠀⠀⠀⠻⡇⠀⢻⣧⠀⠀⠀⠀⠀⠀⠀
  #               ⠀⠀⠀⠀⠀⠀⠀⠀⢩⣿⠃⠀⠉⠀⠀⠀⠀⠀⠀⠈⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⠀⠀⠀⠀⠀⠀⠀
  #               ⠀⠀⠀⠀⠀⠀⠀⠀⠿⠃⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⣿⣿⣧⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
  #               ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⡿⠋⢻⣿⡍⠛⠻⠷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
  #               ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠋⠀⢠⣿⠟⢿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
  #               ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⠋⠀⠀⠙⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
  description = "My Awesome | guifuentes8 | Nixos Configuration";

  inputs = {
    # Nix required
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    # nixpkgs-pkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nix-darwin.url = "github:LnL7/nix-darwin";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
    nix-wsl.url = "github:nix-community/NixOS-WSL";
    nix-wsl.inputs.nixpkgs.follows = "nixpkgs";
    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Others flakes
    firefox-addons = {
      url = "gitlab:rycee/nur-expressions?dir=pkgs/firefox-addons";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    sops-nix.url = "github:Mic92/sops-nix";
    stylix = {
      url = "github:danth/stylix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nix-colors.url = "github:misterio77/nix-colors";
    # darkmatter-grub-theme.url = "gitlab:VandalByte/darkmatter-grub-theme";
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    neorg-overlay.url = "github:nvim-neorg/nixpkgs-neorg-overlay";

  };

  outputs =
    { self
    , nixpkgs
      #, nixpkgs-unstable
    , nix-darwin
    , home-manager
    , sops-nix
    , nix-colors
    , stylix
    , neorg-overlay
    , ...
    }@inputs:
    let
      inherit (self) outputs;
      forEachSystem = nixpkgs.lib.genAttrs [ "x86_64-linux" "x86_64-darwin" ];
      forEachPkgs = f: forEachSystem (sys: f nixpkgs.legacyPackages.${sys});
      #unstable = import nixpkgs-unstable {
      #  system = "x86_64-linux";
      #  config.allowUnfree = true;
      #};

    in
    {
      nixosModules = import ./modules/nixos;
      homeManagerModules = import ./modules/home-manager;
      overlays = import ./overlays { inherit inputs outputs; };
      packages = forEachPkgs (pkgs: import ./pkgs { inherit pkgs; });
      devShells = forEachPkgs (pkgs: import ./shell.nix { inherit pkgs; });

      # Home Manager Configurations

      #                              CHARIZARD (The big boss PC, dual Xeon processor on fire from home 🐦🔥)

      #   ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣶⣿⣻⣾⠁⠀⠀⠀⢀⣶⣺⢿⣖⣢⣤⣤⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣷⣿⠦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
      #   ⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⡤⢖⣾⣽⣾⣾⣿⣿⢾⡀⠀⠀⠀⠘⣿⣻⠻⠿⣶⣬⣽⣲⢿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡿⣿⣷⣾⣌⢧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
      #   ⠀⠀⠀⠀⠀⠀⠀⠀⣴⡟⢳⣵⣿⣿⣿⣿⣿⣿⣿⣯⣷⠀⠀⠀⠀⠘⣯⣷⣿⣶⢹⡝⢻⣯⣿⣷⣿⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⡎⣿⣿⣿⣿⣿⣷⡍⢲⡄⠀⠀⠀⠀⠀⠀⠀⠀
      #   ⠀⠀⠀⠀⠀⠀⢀⡴⣛⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡸⡆⠀⠀⠀⠀⠀⠁⠙⢯⣳⣭⣗⣮⢿⡌⠉⠛⠇⠀⠀⠀⠀⠀⠀⠀⡼⣽⣿⣿⣿⣿⣿⣿⣿⣧⣋⡕⣢⣄⠀⠀⠀⠀⠀
      #   ⠀⠀⠀⠀⢀⡴⣯⣷⣿⣿⣿⢿⣯⣟⡾⣿⣿⣿⣿⣿⡇⣹⡀⠀⠀⠀⠀⠀⠀⠈⠙⣷⡻⢿⠟⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣱⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣷⣯⣛⣧⠀⠀⠀⠀
      #   ⠀⠀⠀⣴⢋⣾⣿⣿⣿⣻⣽⣻⢾⣽⣻⣿⣿⣿⣿⣿⣿⢐⠳⡤⣀⠀⠀⠀⠀⠀⠀⢹⡙⢫⠰⢽⡀⠀⠀⠀⠀⠀⠀⠀⣠⣧⣿⣿⣿⣿⣿⣿⣯⢿⣽⣻⢿⣿⣿⣿⣞⣧⠀⠀⠀
      #   ⠀⠀⢰⢧⣿⣿⣿⣟⣷⣻⢾⣽⣻⢾⣽⣿⣿⣿⣿⣿⣿⣿⣷⣮⣖⡹⠦⣄⠀⠀⠀⢸⡇⣍⠚⡤⣷⠀⠀⠀⠀⣀⢴⡺⢏⣥⣿⣿⣿⣿⣿⣿⣞⡿⣾⣽⣻⢾⣽⣿⣿⣎⣧⠀⠀
      #   ⠀⢠⣿⣿⣿⣿⣳⣟⡾⣽⣻⢾⣽⣻⢾⣿⣿⣿⣿⣻⢿⣿⣿⣿⣿⣿⣷⣜⡳⢤⣄⢸⡇⢆⡹⠤⣹⡀⣠⠶⢊⣵⣾⣿⣿⣿⣿⡿⣽⣿⣿⡷⣯⣟⡷⣯⣽⣻⢾⣽⣻⣿⣮⢇⠀
      #   ⠀⣾⣾⣿⣟⣾⣳⢯⣿⠷⠿⠛⢾⣽⣻⣿⣿⣿⣳⢯⣟⡾⣽⢿⣿⣿⣿⣿⣿⢶⣬⢟⡱⢪⠶⠷⢞⠻⣧⣬⣿⣿⣿⣿⣿⢿⣯⢿⣽⣿⣿⣽⣳⡯⢿⣷⣯⣟⡿⣾⡽⣿⣿⡞⡄
      #   ⢠⣿⣿⡿⣾⠷⠋⠁⠀⠀⠀⠀⠀⢻⣟⣿⣿⣳⢯⡿⣽⣻⡿⢛⠛⡛⢛⠻⣇⢎⣉⠲⣐⠣⣊⠵⢊⠵⢡⢲⡌⡹⢛⡛⣛⢛⠾⣟⣾⣿⣷⣻⠋⠀⠀⢀⣿⠻⢽⣷⣻⢿⣿⣷⢱
      #   ⠸⣿⣿⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⣿⣹⡿⠉⠉⡿⣀⠇⣾⣷⣿⣶⣿⣶⡎⢱⡈⠷⣀⠾⡈⠶⣁⠎⣿⣷⣷⣾⣶⡉⢱⣎⢿⣿⡾⠁⠀⠀⠀⢹⣿⣾⡀⠉⢿⣿⣿⣿⢰
      #   ⡜⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⡿⠁⢀⣠⠞⡱⢨⣽⣿⠟⠉⢿⡏⡍⢆⠣⣜⡶⠓⠋⠉⠛⠲⣼⡸⡿⠉⠙⢿⣿⢦⣌⡙⡚⠶⣤⡀⠀⠀⢿⣿⠝⣤⠀⠀⢹⣿⣿⠘
      #   ⢻⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⢾⣉⠦⠱⢡⣿⠛⠁⠀⢀⡟⡰⢩⢌⡷⠋⠀⠀⠀⠀⠀⠀⠀⠹⣿⡀⠀⠀⠋⠀⢻⡰⣡⣳⣶⣽⡦⢰⣿⠏⠀⡿⠀⠀⠀⣿⡇⠇
      #   ⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⣸⠗⣷⣿⠀⠀⠀⡾⡰⢅⢣⡾⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣧⠀⠀⠀⠀⠸⢿⣇⣿⡿⠉⠁⣽⡿⣆⠀⢱⣷⡄⠀⢸⣿⠀
      #   ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣨⠿⠶⣟⣁⣀⣠⠞⣽⠰⣉⢾⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⡦⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠁⠀⠀⣨⠟⠃⠀⠸⠃⠀
      #   ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⢾⠷⣼⣷⣶⡶⣶⠞⠁⣴⢃⠣⡌⢾⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠄⣾⠹⣌⠑⢤⡀⠀⠀⠀⠀⠀⠀⠉⢻⣦⠞⠁⠀⠀⠀⠀⠀⠀
      #   ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡞⡍⢆⢣⠒⡤⢒⣴⢏⡴⣋⠆⢎⡱⣬⣿⡟⠀⠀⠀⠀⢀⠠⠴⠂⠁⠀⣰⡿⣧⡚⡳⣄⠙⣄⠀⠀⠀⣀⡤⣾⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀
      #   ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣏⡴⠑⠎⠦⣙⢰⣥⡟⢫⠔⣡⢚⣴⣾⢻⣼⠃⠀⠀⠀⠁⠀⠀⠀⠀⣠⣼⢏⡷⣱⢟⣶⣉⠳⣼⣶⣭⣿⢶⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
      #   ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣧⣿⣼⣧⣼⠿⠿⣟⢄⣼⣤⢿⠧⣜⡿⠣⢤⣀⣀⢀⣀⣀⣀⣤⠟⠻⣧⣟⡸⣇⢿⡸⣧⢣⣼⢟⣻⠤⠛⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
      #   ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠓⢭⣁⡀⠀⣀⣰⣿⣫⣷⣙⢮⡿⠯⠤⠖⠒⠚⠋⠉⠉⠀⠉⠉⠓⠒⢒⣿⡟⣾⣣⣝⣾⡛⠋⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
      #   ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠉⣿⢴⣯⣿⣽⣾⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠿⣼⣣⡟⣏⣴⣩⢷⣢⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
      #   ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡧⢚⣇⠜⠛⢼⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠛⠓⣽⣗⠛⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
      homeConfigurations."guifuentes8@Charizard" =
        home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages."x86_64-linux";
          extraSpecialArgs = { inherit nix-colors inputs outputs; };
          modules = [
            stylix.homeManagerModules.stylix
            ./home/guifuentes8/charizard.nix
          ];
        };
      nixosConfigurations.Charizard = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs outputs; };
        modules = [
          stylix.nixosModules.stylix
          sops-nix.nixosModules.sops
          ./hosts/Charizard
        ];
      };
      #                                PIKACHU (Main laptop, transport and beautiful friend)

      #                      ⠸⣷⣦⠤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣠⣤⠀⠀⠀
      #                      ⠀⠙⣿⡄⠈⠑⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠔⠊⠉⣿⡿⠁⠀⠀⠀
      #                      ⠀⠀⠈⠣⡀⠀⠀⠑⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⠊⠁⠀⠀⣰⠟⠀⠀⠀⣀⣀
      #                      ⠀⠀⠀⠀⠈⠢⣄⠀⡈⠒⠊⠉⠁⠀⠈⠉⠑⠚⠀⠀⣀⠔⢊⣠⠤⠒⠊⠉⠀⡜
      #                      ⠀⠀⠀⠀⠀⠀⠀⡽⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠩⡔⠊⠁⠀⠀⠀⠀⠀⠀⠇
      #                      ⠀⠀⠀⠀⠀⠀⠀⡇⢠⡤⢄⠀⠀⠀⠀⠀⡠⢤⣄⠀⡇⠀⠀⠀⠀⠀⠀⠀⢰⠀
      #                      ⠀⠀⠀⠀⠀⠀⢀⠇⠹⠿⠟⠀⠀⠤⠀⠀⠻⠿⠟⠀⣇⠀⠀⡀⠠⠄⠒⠊⠁⠀
      #                      ⠀⠀⠀⠀⠀⠀⢸⣿⣿⡆⠀⠰⠤⠖⠦⠴⠀⢀⣶⣿⣿⠀⠙⢄⠀⠀⠀⠀⠀⠀
      #                      ⠀⠀⠀⠀⠀⠀⠀⢻⣿⠃⠀⠀⠀⠀⠀⠀⠀⠈⠿⡿⠛⢄⠀⠀⠱⣄⠀⠀⠀⠀
      #                      ⠀⠀⠀⠀⠀⠀⠀⢸⠈⠓⠦⠀⣀⣀⣀⠀⡠⠴⠊⠹⡞⣁⠤⠒⠉⠀⠀⠀⠀⠀
      #                      ⠀⠀⠀⠀⠀⠀⣠⠃⠀⠀⠀⠀⡌⠉⠉⡤⠀⠀⠀⠀⢻⠿⠆⠀⠀⠀⠀⠀⠀⠀
      #                      ⠀⠀⠀⠀⠀⠰⠁⡀⠀⠀⠀⠀⢸⠀⢰⠃⠀⠀⠀⢠⠀⢣⠀⠀⠀⠀⠀⠀⠀⠀
      #                      ⠀⠀⠀⢶⣗⠧⡀⢳⠀⠀⠀⠀⢸⣀⣸⠀⠀⠀⢀⡜⠀⣸⢤⣶⠀⠀⠀⠀⠀⠀
      #                      ⠀⠀⠀⠈⠻⣿⣦⣈⣧⡀⠀⠀⢸⣿⣿⠀⠀⢀⣼⡀⣨⣿⡿⠁⠀⠀⠀⠀⠀⠀
      #                      ⠀⠀⠀⠀⠀⠈⠻⠿⠿⠓⠄⠤⠘⠉⠙⠤⢀⠾⠿⣿⠟⠋
      homeConfigurations."guifuentes8@Pikachu" =
        home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages."x86_64-linux";
          extraSpecialArgs = { inherit nix-colors inputs outputs; };
          modules =
            [ stylix.homeManagerModules.stylix ./home/guifuentes8/pikachu.nix ];
        };
      nixosConfigurations.Pikachu = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs outputs; };
        modules = [
          sops-nix.nixosModules.sops
          stylix.nixosModules.stylix
          ./hosts/Pikachu
        ];
      };
      #                               SQUIRTLE (Windows WSL, WTF)

      #                       ⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡤⠄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
      #                       ⠀⠀⠀⠀⠀⠀⣴⡎⠠⠊⠀⠠⠚⢿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
      #                       ⠀⠀⠀⠀⠀⢠⡍⠀⠀⠀⠀⣾⣤⣿⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀
      #                       ⠀⠀⠀⠀⢀⠞⠀⠀⠀⠀⠈⠙⠡⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀
      #                       ⠀⠀⠀⠀⠀⢷⣤⣮⣤⣴⣶⣶⣶⣿⣿⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀
      #                       ⠀⠀⠀⠀⠀⢀⣙⣿⣿⣿⣿⣿⣿⣿⣿⣯⣇⡀⠀⠀⠀⠀⠀⠀⠀⠀
      #                       ⠀⠀⢀⠔⠊⠁⣰⠙⠻⢿⣿⣿⠟⠁⠻⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀
      #                       ⢈⣶⣂⣀⠀⡐⠁⠈⠁⡒⠛⠋⢀⠀⢀⣿⡟⣿⠃⠀⠀⠀⠀⠀⠀⠀
      #                       ⠈⠉⠉⠛⠛⡷⡀⠀⠀⡇⢠⣤⣿⣐⣿⣿⣧⣿⢀⠀⠀⠀⠀⠀⠀⠀
      #                       ⠀⠀⠀⠀⠀⣣⠏⠐⠒⠦⠤⠬⢽⣹⣿⣿⣿⣿⣟⠀⡠⠐⠒⠒⣦⡀
      #                       ⠀⠀⠀⠀⡔⠘⢄⠀⢠⡄⠀⢀⣼⠟⠉⠉⠳⣿⢇⣼⣤⣤⣴⣾⣿⣿
      #                       ⠀⠀⠀⢰⣀⣴⣿⣿⣿⣿⣿⣿⡃⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⡿
      #                       ⠀⠀⠀⣼⣿⣿⣿⣿⠋⠙⠛⠻⠷⣄⡀⢀⣰⣿⣿⣿⣿⣿⣿⡿⠛⠀
      #                       ⠀⠀⠀⠉⠹⠛⠋⠁⠀⠀⠀⠀⠀⠿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀
      #                       ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠉⠁⠉⠀⠀⠀⠀⠀⠀⠀⠀
      homeConfigurations."guifuentes8@Squirtle" =
        home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages."x86_64-linux";
          extraSpecialArgs = { inherit nix-colors inputs outputs; };
          modules = [ ./home/guifuentes8/squirtle.nix ];
        };

      nixosConfigurations.Squirtle = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs outputs nix-colors; };
        modules = [ sops-nix.nixosModules.sops ./hosts/Squirtle ];
      };
      #                         Magikarp (Old laptop like a Magikarp ;D)

      #               ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡶⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
      #               ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡀⠀⠀⣠⡞⠁⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
      #               ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⠙⢦⡾⠁⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
      #               ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⡇⠀⠉⠂⠀⠀⠀⢸⠓⠶⣦⠀⠀⠀⠀⠀⠀⠀⠀
      #               ⠀⠀⠀⠀⠀⠀⠀⣀⣀⡴⠚⣧⣤⣄⣀⠀⠀⠀⠀⢀⡴⠃⠀⠀⠀⠀⠀⠀⠀⠀
      #               ⠀⠀⠀⢀⣤⠖⠋⠉⠀⠀⠀⠰⠀⢈⠏⠛⢦⣄⣠⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀
      #               ⠀⢀⣴⠋⠀⢠⠔⠒⠢⡀⠀⠀⡇⠈⢢⠀⠀⠉⢳⡄⠀⠀⠀⠀⣠⠴⣒⠾⢟⠟
      #               ⢰⠻⣁⠀⠀⡃⠀⠂⠀⡸⠀⠀⢰⠀⢅⠀⠀⠀⠘⠙⣆⠀⡴⢋⡵⠊⠁⠀⡸⠀
      #               ⠈⢗⡄⠆⠀⠳⠤⠤⠚⢁⡠⠖⡋⠩⠭⠷⠖⠒⣲⣶⠼⡞⣠⠛⠀⠉⠉⣹⠃⠀
      #               ⠀⢸⠄⡀⠀⠀⢤⢄⠀⠁⣠⡞⠂⠉⠉⠀⣠⠞⠁⠃⠀⢱⠃⠀⠀⠀⡰⠁⠀⠀
      #               ⡰⡝⢃⢇⠀⠀⠀⢱⢱⠀⠑⢤⡁⠀⢀⠞⠁⠀⠰⠀⡰⡿⠀⠀⠀⠀⡇⠀⠀⠀
      #               ⡇⡏⠙⠳⣭⣐⡀⠄⡄⣆⢀⡜⠉⡦⠎⠀⠀⣠⡧⠚⡅⡇⠡⡀⠀⢠⠇⠀⠀⠀
      #               ⠰⣡⠀⠀⠀⠉⠙⠻⠀⣷⠾⠭⠭⠴⢶⠖⠛⠉⠀⠀⢣⢳⠀⠈⢢⡞⠀⠀⠀⠀
      #               ⠀⠹⣣⠀⠀⠀⠀⢰⢰⠃⠀⠀⠀⠀⠈⢧⠀⠀⠀⠀⠀⠻⣷⣠⠏⠀⠀⠀⠀⠀
      #               ⠀⠀⢣⢃⠀⠀⠀⣾⢸⣀⣤⡄⠀⢠⣄⡈⢧⠀⠀⠀⠀⠀⠈⠙⠂⠀⠀⠀⠀⠀
      #               ⠀⠀⠀⣼⠀⠀⠀⠀⡆⡇⠀⠙⠳⠏⠈⠙⠛⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
      #               ⠀⠀⢀⡟⠀⠀⠀⠀⠈⠮⣢⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
      homeConfigurations."guifuentes8@Magikarp" =
        home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages."x86_64-linux";
          extraSpecialArgs = { inherit nix-colors inputs outputs; };
          modules = [ ./home/guifuentes8/magikarp.nix ];
        };
      nixosConfigurations.Magikarp = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs outputs nix-colors; };
        modules = [ sops-nix.nixosModules.sops ./hosts/Magikarp ];
      };
      #                           POKECENTER (Homelab nextcloud server)

      #                   ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
      #                   ⠀⠀⠀⠀⠀⠀⣀⣴⡶⠿⠛⠛⠛⠛⠛⠛⠻⠷⣦⣄⡀⠀⠀⠀⠀⠀
      #                   ⠀⠀⠀⠀⣠⡾⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠿⣦⡀⠀⠀⠀
      #                   ⠀⠀⢠⣾⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣆⠀⠀
      #                   ⠀⢠⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣇⠀
      #                   ⠀⣾⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡄
      #                   ⢠⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇
      #                   ⠸⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⡇
      #                   ⠀⣿⣿⣦⣀⠀⠀⠀⠀⠀⣠⣴⣶⢶⣦⣤⡀⠀⠀⠀⠀⢀⣠⣾⣿⠇
      #                   ⠀⠸⣷⡈⠛⠿⣶⣦⣤⣼⠟⡡⠒⠒⢢⠙⣿⣤⣤⣶⠾⠟⠋⣰⡟⠀
      #                   ⠀⠀⠹⣷⡄⠀⠀⠀⠉⣿⣄⠣⣀⢀⡠⢀⣿⠏⠁⠀⠀⢀⣴⡟⠀⠀
      #                   ⠀⠀⠀⠈⠻⣦⣄⠀⠀⠈⠻⢷⣦⣤⣶⠿⠋⠀⠀⢀⣤⡾⠋⠀⠀⠀
      #                   ⠀⠀⠀⠀⠀⠈⠛⠷⣦⣤⣀⣀⠀⠀⣀⣀⣠⣤⡶⠟⠋⠀⠀⠀⠀⠀
      #                   ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠛⠛⠛⠛⠋⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀
      homeConfigurations."guifuentes8@PokeCenter" =
        home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages."x86_64-linux";
          extraSpecialArgs = { inherit nix-colors inputs outputs; };
          modules = [ ./home/guifuentes8/pokecenter.nix ];
        };
      nixosConfigurations.PokeCenter = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs outputs nix-colors; };
        modules = [ sops-nix.nixosModules.sops ./hosts/PokeCenter ];
      };
      #                               MEW (Apple macOs)

      #                     ⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣠⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
      #                     ⠀⠀⠀⠀⠀⠀⢀⣴⣾⣿⡟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
      #                     ⠀⠀⠀⠀⢀⣴⠿⢟⣛⣩⣤⣶⣶⣶⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
      #                     ⠀⠀⢀⣴⣿⠿⠸⣿⣿⣿⣿⣿⣿⡿⢿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
      #                     ⠀⢠⠞⠉⠀⠀⠀⣿⠋⠻⣿⣿⣿⠀⣦⣿⠏⠀⠀⠀⢀⣀⣀⣀⣀⣀⠀⠀
      #                     ⢠⠏⠀⠀⠀⠀⠀⠻⣤⣷⣿⣿⣿⣶⢟⣁⣒⣒⡋⠉⠉⠁⠀⠀⠀⠈⠉⡧
      #                     ⢻⡀⠀⠀⠀⠀⠀⣀⡤⠌⢙⣛⣛⣵⣿⣿⡛⠛⠿⠃⠀⠀⠀⠀⠀⢀⡜⠁
      #                     ⠀⠉⠙⠒⠒⠛⠉⠁⠀⠸⠛⠉⠉⣿⣿⣿⣿⣦⣄⠀⠀⠀⢀⣠⠞⠁⠀⠀
      #                     ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⣿⣿⡿⣿⣿⣷⡄⠞⠋⠀⠀⠀⠀⠀
      #                     ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣷⡻⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀
      #                     ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢨⣑⡙⠻⠿⠿⠈⠙⣿⣧⠀⠀⠀⠀⠀⠀
      #                     ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣷⡀⠀⠀⠀⠀⢹⣿⣆⠀⠀⠀⠀⠀
      #                     ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣿⡇⠀⠀⠀⠀⠸⣿⣿⡄⠀⠀⠀⠀
      #                     ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠁⠀⠀⠀⠀⠀⡿⣿⣿⠀⠀⠀⠀
      #                     ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠀⠀⠀⠀⠀
      darwinConfigurations."Mew" =
        nix-darwin.lib.darwinSystem { modules = [ ./hosts/Mew ]; };
      darwinPackages = self.darwinConfiguration."Mew".pkgs;

    };
}
