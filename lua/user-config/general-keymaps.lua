-- vim.keymap.set("n", "<leader>mce", "<cmd>exe 'edit' stdpath('config').'/lua/plugins/test-plugins.lua'<cr>", { desc = "plugin/extras testing testing" })

vim.keymap.set("n", "<leader>w", "<C-w>w", {
  desc = "Go to next window",
})

vim.keymap.set({ "n", "v" }, "}", function ()
  vim.cmd("normal 10k")
end, {desc = "up 10 line"})

vim.keymap.set({ "n", "v" }, "{", function ()
  vim.cmd("normal 10j")
end, {desc = "down 10 line"})


vim.keymap.set({ "n", "v" }, "(", function ()
  vim.cmd("normal! )")
end, {desc = "switch ( to )"})

vim.keymap.set({ "n", "v" }, ")", function ()
  vim.cmd("normal! (")
end, {desc = "switch ( to )"})

vim.keymap.set("n", "<leader>cm", function()
  vim.cmd("normal! (")            -- 1. Pindah ke awal kalimat

  if vim.fn.search(":") == 0 then -- 2. Cari ':'
    print("Target not found!")
    return
  end

  vim.cmd("normal! bvey")                -- 3. Pilih kata sebelum ':'

  local saved_value = vim.fn.getreg('"') -- 4. Ambil teks hasil yank
  if saved_value == "" then
    print("Error: no target saved")
    return
  end

  local file_dir = vim.fn.expand("%:p:h") -- 5. Ambil direktori file saat ini
  if file_dir == "" then
    print("Error: cannot determine file directory")
    return
  end

  vim.cmd("normal! ``")      -- 6. kembali ke lokasi awal

  local cmd = string.format( -- 7. Jalankan make di direktori file tersebut
    "cd %q && make %s; echo; echo 'Press any key to close...'; read -n1",
    file_dir,
    saved_value
  )

  vim.fn.jobstart({ -- 8. Open urxvt dan run make target
    "urxvtc",
    "-e", "bash", "-i", "-c", cmd
  }, { detach = true })
end, { desc = "Run make target under the cursor" })

