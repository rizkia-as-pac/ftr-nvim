return {
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = {
      style = "moon",
      integrations = { blink_cmp = true },
    },
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
        -- flavour = "latte",
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
          latte = {
            green = "#158995", -- blueish green  # 1
            -- green = "#006600", -- darker green #2
            -- green = "#016342", -- blueish green #4
            -- green = "#098baa", -- blueish green #3
            base = "#e4e4e4",
            mantle = "#d7d7d7",
          },
        },
        -- ref : catppuccin/nvim/lua/catppuccin/palettes/latte.lua
      })
    end,
  },
}
