{ pkgs, lib, config, unstable, theme, ... }:
let
  fromGitHub = rev: ref: repo:
    pkgs.vimUtils.buildVimPlugin {
      pname = "${lib.strings.sanitizeDerivationName repo}";
      version = ref;
      src = builtins.fetchGit {
        url = "https://github.com/${repo}.git";
        ref = ref;
        rev = rev;
      };
    };

in {

  programs.vim = { enable = true; };
  programs.neovim = {
    enable = true;
    package = unstable.neovim-unwrapped;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;
    extraLuaConfig = ''
      require 'settings'
      require 'highlights'
      require 'maps'
    '';
    extraConfig = "\n";
    plugins = with unstable.vimPlugins; [
      {
        plugin = catppuccin-nvim;
        type = "lua";
        config = builtins.readFile (./plugins/theme.rc.lua);
      }
      {
        plugin = lualine-nvim;
        type = "lua";
        config = builtins.readFile (./plugins/lualine.rc.lua);
      }
      {
        plugin = nvim-lspconfig;
        type = "lua";
        config = builtins.readFile (./plugins/lspconfig.rc.lua);
      }
      {
        plugin = lspkind-nvim;
        type = "lua";
        # config = builtins.readFile (./plugins/lspkind.rc.lua);
      }
      {
        plugin = luasnip;
        type = "lua";
        config = builtins.readFile (./plugins/luasnip.rc.lua);
      }
      {
        plugin = nvim-cmp;
        type = "lua";
        config = builtins.readFile (./plugins/cmp.rc.lua);
      }
      {
        plugin = nvim-treesitter.withAllGrammars;
        type = "lua";
        config = builtins.readFile (./plugins/treesitter.rc.lua);
      }
      {
        plugin = nvim-ts-autotag;
        type = "lua";
        config = builtins.readFile (./plugins/autotag.rc.lua);
      }
      {
        plugin = nvim-autopairs;
        type = "lua";
        config = builtins.readFile (./plugins/autopair.rc.lua);
      }
      {
        plugin = telescope-nvim;
        type = "lua";
        config = builtins.readFile (./plugins/telescope.rc.lua);
      }
      {
        plugin = nvim-colorizer-lua;
        type = "lua";
        config = builtins.readFile (./plugins/colorizer.rc.lua);
      }
      {
        plugin = lspsaga-nvim;
        type = "lua";
        config = builtins.readFile (./plugins/lspsaga.rc.lua);
      }
      {
        plugin = gitsigns-nvim;
        type = "lua";
        config = builtins.readFile (./plugins/gitsign.rc.lua);
      }
      {
        plugin = alpha-nvim;
        type = "lua";
        config = builtins.readFile (./plugins/alpha.rc.lua);
      }
      {
        plugin = indent-blankline-nvim;
        type = "lua";
        config = builtins.readFile (./plugins/indent.rc.lua);
      }
      {
        plugin = nvim-scrollbar;
        type = "lua";
        config = builtins.readFile (./plugins/scrollbar.rc.lua);
      }

      {
        plugin = nvim-lint;
        type = "lua";
        config = builtins.readFile (./plugins/lint.rc.lua);
      }
      {
        plugin = conform-nvim;
        type = "lua";
        config = builtins.readFile (./plugins/conform.rc.lua);
      }
      {
        plugin = bufferline-nvim;
        type = "lua";
        config = builtins.readFile (./plugins/bufferline.rc.lua);
      }
      {
        plugin = rainbow-delimiters-nvim;
        type = "lua";
        config = builtins.readFile (./plugins/rainbow.rc.lua);
      }
      {
        plugin = neorg;
        type = "lua";
        config = builtins.readFile (./plugins/neorg.rc.lua);
      }
      {
        plugin = (fromGitHub "dd676584145d62b30d7e8dbdd011796a8f0a065f" "HEAD"
          "VonHeikemen/fine-cmdline.nvim");
        type = "lua";
        config = builtins.readFile (./plugins/cmdline.rc.lua);
      }

      cmp-buffer # buffer words
      cmp-nvim-lsp # dependencies
      cmp_luasnip

      plenary-nvim
      nvim-web-devicons
      zen-mode-nvim
      nvim-spectre
      friendly-snippets

      nui-nvim

      # Telescope 
      telescope-project-nvim
      telescope-github-nvim
      telescope-media-files-nvim
      telescope-undo-nvim
      telescope-file-browser-nvim
    ];

    extraPackages = with pkgs; [

      # Language servers
      nodePackages.typescript-language-server
      nodePackages.vscode-langservers-extracted
      nodePackages.pyright
      marksman
      tailwindcss-language-server
      lua-language-server
      nixd

      # Formaters
      nixfmt
      prettierd
      eslint_d

      # Others
      nodePackages.live-server
    ];

  };

  home.sessionVariables.EDITOR = "nvim";
  xdg.configFile."nvim/lua/settings.lua".source = ./settings.lua;
  xdg.configFile."nvim/lua/highlights.lua".source = ./highlights.lua;
  xdg.configFile."nvim/lua/maps.lua".source = ./maps.lua;
  xdg.configFile."nvim/lua/plugins".source = ./plugins;

}

