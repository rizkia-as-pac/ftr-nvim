local setup_sources = require("plugins.core.setup-sources")

return {
  {
    -- Language Parser
    "nvim-treesitter/nvim-treesitter",
    opts = function()
      vim.list_extend(setup_sources.language_parsers, { "python" })
    end,
  },
  {
    -- LSP
    "williamboman/mason-lspconfig.nvim",
    opts = function()
      vim.list_extend(setup_sources.mason_lsps, { "pylsp" })

      -- setup client
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lspconfig = require("lspconfig")
      lspconfig.pylsp.setup({ capabilities = capabilities })
    end,
  },
  {
    -- LS from tool
    "nvimtools/none-ls.nvim",
    opts = function()
      vim.list_extend(setup_sources.mason_general_packages, { "black" })

      vim.list_extend(setup_sources.null_ls_packages_setup, {
        require("null-ls").builtins.formatting.black,
      })
    end
  }
}
