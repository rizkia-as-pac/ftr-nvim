return {
  "kristijanhusak/vim-dadbod-ui",
  dependencies = { "tpope/vim-dadbod", "kristijanhusak/vim-dadbod-completion", "tpope/vim-dotenv" },
  config = function()
    -- DBUI_URL=postgresql://user:password@localhost:5432/db
    -- DBUI_NAME=pg-seal

    -- local Terminal = require("toggleterm.terminal").Terminal
    -- local dbui = Terminal:new({
    --   cmd = "nvim -c 'DBUI'",
    --   hidden = false,
    --   direction = "float",
    --   count = 77,
    -- })
    -- vim.keymap.set("n", "<leader>md", function()
    --   dbui:toggle()
    -- end, { silent = true, desc = "Dadbod UI (toggle)" })
  end,
}
