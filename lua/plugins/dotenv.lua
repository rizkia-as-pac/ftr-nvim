return {
  "tpope/vim-dotenv",
  lazy = false,
  config = function()
    vim.api.nvim_create_autocmd("VimEnter", {
      callback = function()
        -- load .env dari cwd jika ada
        if vim.fn.filereadable(".env") == 1 then
          vim.cmd("silent Dotenv .env")
        end
      end,
    })
  end,
}
