return {
  "kristijanhusak/vim-dadbod-ui",
  dependencies = { "tpope/vim-dadbod", "kristijanhusak/vim-dadbod-completion", "akinsho/toggleterm.nvim" },
  config = function()
    require("toggleterm").setup({
      direction = "float",
      open_mapping = [[<c-\>]],
      float_opts = {
        width = function()
          return math.floor(vim.o.columns * 0.98)
        end,
        height = function()
          return math.floor(vim.o.lines * 0.95)
        end,
      },
    })

    local Terminal = require("toggleterm.terminal").Terminal

    local dbui = Terminal:new({
      cmd = "nvim -c 'DBUI'",
      hidden = false,
      direction = "float",
      count = 77,
    })


    vim.keymap.set("n", "<leader>md", function()
      dbui:toggle()
    end, { silent = true, desc = "Dadbod UI (toggle)" })
  end,
}
