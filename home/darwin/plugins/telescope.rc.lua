local status, telescope = pcall(require, 'telescope')
if (not status) then return end
local actions = require('telescope.actions')
local fb_actions = require "telescope._extensions.file_browser.actions"
local builtin = require('telescope.builtin')

telescope.setup {
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
  },
  pickers = {
    find_files = {
      theme = "dropdown",
    },
    live_grep = {
      theme = "dropdown",
    },

  },
  extensions = {
    file_browser = {
      theme = "dropdown",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      mappings = {
        ["i"] = {
          ["<A-c>"] = fb_actions.create,
          ["<S-CR>"] = fb_actions.create_from_prompt,
          ["<A-r>"] = fb_actions.rename,
          ["<A-m>"] = fb_actions.move,
          ["<A-y>"] = fb_actions.copy,
          ["<A-d>"] = fb_actions.remove,
          ["<C-o>"] = fb_actions.open,
          ["<C-g>"] = fb_actions.goto_parent_dir,
          ["<C-e>"] = fb_actions.goto_home_dir,
          ["<C-w>"] = fb_actions.goto_cwd,
          ["<C-t>"] = fb_actions.change_cwd,
          ["<C-f>"] = fb_actions.toggle_browser,
          ["<C-h>"] = fb_actions.toggle_hidden,
          ["<C-s>"] = fb_actions.toggle_all,
          ["<bs>"] = fb_actions.backspace,
        },
        ["n"] = {
          ["c"] = fb_actions.create,
          ["r"] = fb_actions.rename,
          ["m"] = fb_actions.move,
          ["y"] = fb_actions.copy,
          ["d"] = fb_actions.remove,
          ["o"] = fb_actions.open,
          ["g"] = fb_actions.goto_parent_dir,
          ["e"] = fb_actions.goto_home_dir,
          ["w"] = fb_actions.goto_cwd,
          ["t"] = fb_actions.change_cwd,
          ["f"] = fb_actions.toggle_browser,
          ["h"] = fb_actions.toggle_hidden,
          ["s"] = fb_actions.toggle_all,
        },
      },
    },
    project = {
      base_dirs = {
        { path = '~/Work' },
      },
      hidden_files = false, -- default: false
      theme = "dropdown",
      order_by = "asc",
      search_by = "title",
      sync_with_nvim_tree = false, -- default false
      -- default for on_project_selected = find project files
    },
  },
}

-- Keymaps
--
keymap.set('n', ';f',
  function()
    builtin.find_files({
      no_ignore = false,
      hidden = true,
    })
  end)
keymap.set('n', ';s', function()
  builtin.live_grep()
end)
keymap.set('n', '\\\\', function()
  builtin.buffers()
end)
keymap.set('n', ';e', function()
  builtin.diagnostics()
end)

keymap.set('n', ';h', function()
  builtin.search_history()
end)
keymap.set('n', ';t', function()
  builtin.filetypes()
end)
keymap.set('n', ';g', function()
  builtin.git_status()
end)
keymap.set('n', ';gb', function()
  builtin.git_branches()
end)
keymap.set("n", "<space>f", ":Telescope file_browser<CR>")
keymap.set("n", "<space>b", ":Telescope file_browser path=%:p:h select_buffer=true<CR>")


-- Builtins functions
telescope.load_extension("file_browser")
--telescope.load_extension("project")

