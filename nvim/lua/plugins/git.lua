return {
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup({
				-- Sinais visuais na lateral
				signs = {
					add = { text = "┃" },
					change = { text = "┃" },
					delete = { text = "_" },
					topdelete = { text = "‾" },
					changedelete = { text = "~" },
					untracked = { text = "┆" },
				},
				-- Função para definir atalhos apenas quando houver Git no arquivo
				on_attach = function(bufnr)
					local gs = package.loaded.gitsigns

					local function map(mode, l, r, opts)
						opts = opts or {}
						opts.buffer = bufnr
						vim.keymap.set(mode, l, r, opts)
					end

					-- Navegação entre alterações (hunks)
					map("n", "]c", function()
						if vim.wo.diff then
							return "]c"
						end
						vim.schedule(function()
							gs.next_hunk()
						end)
						return "<Ignore>"
					end, { expr = true, desc = "Próxima alteração Git" })

					map("n", "[c", function()
						if vim.wo.diff then
							return "[c"
						end
						vim.schedule(function()
							gs.prev_hunk()
						end)
						return "<Ignore>"
					end, { expr = true, desc = "Alteração Git anterior" })

					-- Ações: Ver o que mudou na linha atual (Preview)
					map("n", "<leader>hp", gs.preview_hunk, { desc = "Git: Preview da alteração" })
					-- Ver quem escreveu a linha (Blame)
					map("n", "<leader>hb", function()
						gs.blame_line({ full = true })
					end, { desc = "Git: Ver autor da linha" })
				end,
			})
		end,
	},
}
