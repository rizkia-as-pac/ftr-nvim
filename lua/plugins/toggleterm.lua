return {
  "akinsho/toggleterm.nvim",
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
  end,
}
