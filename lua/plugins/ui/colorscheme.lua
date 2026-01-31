return {
  {
    'projekt0n/github-nvim-theme',
    name = 'github-theme',
    lazy = false,    -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require('github-theme').setup({
        -- ...
      })
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      -- QUICK ACCESS TO PLUGIN SPECIFIC CONFIG
      vim.keymap.set("n", "<leader>muc", "<cmd>exe 'edit' stdpath('config').'/lua/plugins/ui/colorscheme.lua'<cr>",
        { desc = "colorscheme config" })

      require("catppuccin").setup({
        flavour = "macchiato",
        color_overrides = {
          macchiato = {
            overlay2 = "#9399b2",
            overlay1 = "#7f849c",
            overlay0 = "#6c7086",
            surface2 = "#585b70",
            surface1 = "#45475a",
            -- surface0 = "#313244", -- ori
            surface0 = "#272735", -- bit darker
            base = "#1e1e2e",
            mantle = "#181825",
            crust = "#11111b",
          },
        },
      })
    end,
  },
}
