return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = {
    -- {
    -- 	"<leader>fF",
    -- 	"<cmd>Telescope find_files<cr>",
    -- 	desc = "Lists files in your current working directory, respects .gitignore",
    -- },
    -- { "<leader>fg", "<cmd>Telescope git_files<cr>" },
    -- { "<leader>fg", "<cmd>Telescope live_grep<cr>" },
    -- { "<leader>fr", "<cmd>Telescope lsp_references<cr>", desc = "Telescope all references" },
    -- {
    -- 	"<leader>fs",
    -- 	"<cmd>Telescope lsp_document_symbols<cr>",
    -- 	desc = "Lists LSP document symbols in the current buffer",
    -- },
    -- {
    -- 	"<leader>fd",
    -- 	"<cmd>Telescope lsp_definitions<cr>",
    -- 	desc = "Goto the definition of the word under the cursor",
    -- },
    -- {
    -- 	"<leader>fx",
    -- 	"<cmd>Telescope diagnostics<cr>",
    -- 	desc = "Lists Diagnostics for all open buffers or a specific buffer",
    -- },
    --
    -- { "<leader>muC", "<cmd>Telescope colorscheme<cr>", desc = "Lists Colorscheme" },
  },
  opts = function()
    require("telescope").setup({
      builtin = {
        diagnostics = {
          previewer = false,
        },
      },
      defaults = {
        path_display = { truncate = 2 },
        -- path_display =  "truncate"
      },
      pickers = {
        colorscheme = {
          enable_preview = true,
        },
      },
      extensions = {
        fzf = {}, -- use native fzf to make it better and faster
      },
    })

    vim.keymap.set("n", "<leader>mlp", function()
      require("telescope.builtin").find_files({
        cwd = vim.fs.joinpath(vim.fn.stdpath("data"), "lazy"),
      })
    end)
  end,
}
