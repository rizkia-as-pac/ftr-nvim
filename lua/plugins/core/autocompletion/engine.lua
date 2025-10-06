-- heart of the engine, the core engine
-- A completion engine plugin for neovim written in Lua. Completion sources are installed from external repositories and "sourced".
--  Autocompletion engine yang memberikan daftar saran saat mengetik.
return {
	"hrsh7th/nvim-cmp",
	opts = function()
		local cmp = require("cmp")

		cmp.setup({
			-- Enable luasnip to handle snippet expansion for nvim-cmp
			-- snippet engine
			snippet = {
				expand = function(args)
					require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
					-- vim.snippet.expand(args.body) -- For native neovim snippets (Neovim v0.10+)
				end,
			},
			sources = {
				{ name = "nvim_lsp" }, -- its suck in js when luasnip is first
				{ name = "luasnip" },
				{ name = "nvim_lua" },
				{ name = "path" },
				{ name = "buffer" },
			},
			mapping = cmp.mapping.preset.insert({
				["<CR>"] = cmp.mapping.confirm({ select = true }),
			}),
			window = {
				completion = cmp.config.window.bordered(),
				documentation = cmp.config.window.bordered(),
			},
			formatting = {
				format = function(entry, vim_item)
					-- vim_item.kind = "ini adalah kind"
					-- vim_item.menu = "ini adalah menu"
					-- vim_item.kind = ({
					--   Function = "F",
					--   buffer = "[Buffer]",
					--   nvim_lsp = "[LSP]",
					--   luasnip = "[LUASNIP]"
					-- })[entry.source.name]

					-- vim_item.menu = ({
					--   buffer = "[Buffer]",
					--   nvim_lsp = "[LSP]",
					--   luasnip = "[LUASNIP]"
					-- })[entry.source.name]

					vim_item.menu = entry.source.name
					vim_item.kind = vim_item.kind

					return vim_item
				end,
			},
		})

		-- `/` cmdline setup. ketika melalukan searching dengan / atau ?
		cmp.setup.cmdline({ "/", "?" }, {
			mapping = cmp.mapping.preset.cmdline(),
			sources = {
				{ name = "buffer" },
			},
		})

		cmp.setup.cmdline(":", {
			mapping = cmp.mapping.preset.cmdline(),
			sources = {
				{ name = "path" },
				{ name = "cmdline" },
			},
			matching = { disallow_symbol_nonprefix_matching = false },
		})
	end,
}

-- the engine will need sources, the engine is just engine no more
-- engine also need a snippet engine

-- autocompletion adalah
-- dari tulis berikut :
-- prin
-- maka akan muncul pilihan berikut :
-- print
-- println
-- printf
