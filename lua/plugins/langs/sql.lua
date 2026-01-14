local setup_sources = require("plugins.core.setup-sources")

return {
  {
    -- Language Parser
    "nvim-treesitter/nvim-treesitter",
    opts = function()
      -- list lang parsers : https://github.com/nvim-treesitter/nvim-treesitter/tree/master?tab=readme-ov-file#supported-languages

      vim.list_extend(setup_sources.language_parsers, { "sql" })
    end,
  },
}
