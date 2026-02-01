return {
  -- NOTE: calon pengganti telescope dari Teej
  "ibhagwan/fzf-lua",
  -- optional for icon support
  -- dependencies = { "nvim-tree/nvim-web-devicons" },
  -- or if using mini.icons/mini.nvim
  -- dependencies = { "echasnovski/mini.icons" },
  -- NOTE : awalnya terasa slow saat buka app.tsx diproject lynx, tp saat dibanding dengan telescope ternyata sama saja
  -- NOTE : secara tampilan window lebih bagus ini
  keys = {
    -- QUICK ACCESS TO PLUGIN SPECIFIC CONFIG
    {
      "<leader>fc",
      "<cmd>exe 'edit' stdpath('config').'/lua/plugins/fzf-lua.lua'<cr>",
      desc = "fzf-lua config"
    },

    { "<leader>fj",  "<cmd>FzfLua buffers<cr>",               desc = "FzfLua buffers", },
    { "<leader>ff",  "<cmd>FzfLua files<cr>",                 desc = "FzfLua files", },
    { "<leader>fG",  "<cmd>Telescope live_grep<cr>",          desc = "tele live grep" },
    { "<leader>fg",  "<cmd>FzfLua live_grep_native<cr>",      desc = "FzfLua live_grep_native" }, -- https://github.com/ibhagwan/fzf-lua/wiki#grep-vs-live-grep


    { "<leader>fr",  "<cmd>FzfLua lsp_references<cr>",        desc = "FzfLua all references" },
    { "<leader>fs",  "<cmd>FzfLua lsp_document_symbols<cr>",  desc = "Lists LSP document symbols in the current buffer", },
    { "<leader>fd",  "<cmd>FzfLua lsp_definitions<cr>",       desc = "Goto the definition of the word under the cursor", },

    { "<leader>fX",  "<cmd>FzfLua diagnostics_workspace<cr>", desc = "Workspace Diagnostics", },
    { "<leader>fx",  "<cmd>FzfLua diagnostics_document<cr>",  desc = "Document Diagnostics", },

    { "<leader>ca",  "<cmd>FzfLua lsp_code_actions<cr>",      desc = "Code action", },

    { "<leader>muu", "<cmd>FzfLua colorschemes<cr>",          desc = "Lists Colorscheme" },
    -- { "<leader>muC", "<cmd>Telescope colorscheme<cr>",       desc = "Lists Colorscheme" },
    -- { "<leader>fx",  "<cmd>Telescope diagnostics<cr>",       desc = "Lists Diagnostics for all open buffers or a specific buffer", },



    -- { "<leader>fG", "<cmd>FzfLua grep<cr>",             desc = "FzfLua grep" },
    -- 	-- { "<leader>fg", "<cmd>Telescope git_files<cr>" },
    -- 	{ "<leader>fg", "<cmd>Telescope live_grep<cr>" },
    -- 	{ "<leader>fr", "<cmd>Telescope lsp_references<cr>", desc = "Telescope all references" },
    -- 	{
    -- 		"<leader>fs",
    -- 		"<cmd>Telescope lsp_document_symbols<cr>",
    -- 		desc = "Lists LSP document symbols in the current buffer",
    -- 	},
    -- 	{
    -- 		"<leader>fd",
    -- 		"<cmd>Telescope lsp_definitions<cr>",
    -- 		desc = "Goto the definition of the word under the cursor",
    -- 	},
    -- 	{
    -- 		"<leader>fx",
    -- 		"<cmd>Telescope diagnostics<cr>",
    -- 		desc = "Lists Diagnostics for all open buffers or a specific buffer",
    -- 	},
    --
    -- 	{ "<leader>muC", "<cmd>Telescope colorscheme<cr>", desc = "Lists Colorscheme" },

  },
  config = function()
    require("fzf-lua").setup {
      -- https://github.com/ibhagwan/fzf-lua?tab=readme-ov-file#customization
      winopts = {
        height  = 1,
        width   = 1,
        preview = {
          border   = "rounded",
          wrap     = true,       -- preview line wrap (fzf's 'wrap|nowrap')
          vertical = "down:50%", -- up|down:size
          layout   = "vertical", -- horizontal|vertical|flex
          delay    = 20,         -- delay(ms) displaying the preview
        },
      },
      -- files = {
      -- Gunakan find dan abaikan .git dan node_modules
      -- find_opts =
      -- [[-type f \! -path '*/.git/*' \! -path '*/node_modules/*' -path '*/src-tauri/gen/*' -path '*/src-tauri/target/*']],

      -- Gunakan ripgrep dan abaikan .git dan node_modules
      -- rg_opts   =
      -- [[--color=never --hidden --files -g "!.git" -g "!node_modules" -g "!src-tauri/gen" -g "!src-tauri/target"]],

      -- Gunakan fd dan abaikan .git dan node_modules
      -- fd_opts   = [[--color=never --hidden --type f --type l --exclude .git --exclude node_modules --exclude src-tauri/gen/android/buildSrc --exclude src-tauri/gen/android.bak/buildSrc --exclude src-tauri/target]], -- kayak cuma ini yg work
      -- fd_opts   =
      -- [[--color=never --hidden --type f --type l --exclude .git --exclude node_modules --exclude src-tauri/gen --exclude src-tauri/target]], -- kayak cuma ini yg work
      -- },
    }
  end
}
