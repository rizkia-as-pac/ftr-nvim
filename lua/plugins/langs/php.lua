local setup_sources = require("plugins.core.setup-sources")

return {

  {
    -- Language Parser
    "nvim-treesitter/nvim-treesitter",
    opts = function()
      -- list lang parsers : https://github.com/nvim-treesitter/nvim-treesitter/tree/master?tab=readme-ov-file#supported-languages

      -- Add a Treesitter parser for Laravel Blade to provide Blade syntax highlighting.
      vim.list_extend(setup_sources.language_parsers, { "blade", "php_only" })
    end,
  },
  {
    -- LSP
    "williamboman/mason-lspconfig.nvim",
    opts = function()
      -- source :  https://mason-registry.dev/registry/list
      -- atau lihat saja dari :Mason, contoh => (v) rust-analyzer rust_analyzer, rust_analyzer (keywords: rust) -- yang ditulis adalah rust_analyzer (yg ditulis adalah nama packagenya, atau jika ada nama setelah package tersebut, atau apapun sebelum tanda kurung dari keyword)

      vim.list_extend(setup_sources.mason_lsps, { "intelephense" })

      -- setup client
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lspconfig = require("lspconfig")
      lspconfig.intelephense.setup({ capabilities = capabilities })
    end,
  },
  {
    -- LS from tool
    "nvimtools/none-ls.nvim",
    opts = function()
      -- https://www.reddit.com/r/neovim/comments/1juaond/trying_to_get_php_formatting_through_nonels_with/
      --
      vim.list_extend(setup_sources.mason_general_packages, { "pint" })

      vim.list_extend(setup_sources.null_ls_packages_setup, {
        require("null-ls").builtins.formatting.pint,
      })
    end
  }
}
