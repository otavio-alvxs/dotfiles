return {
	{
		"folke/which-key.nvim",
		event = "VeryLazy", -- Carrega o plugin apenas quando necessário
		opts = {
			-- Configurações visuais e de comportamento
			icons = {
				group = "+", -- Ícone que aparece antes de grupos
				separator = "➜",
			},
		},
		config = function(_, opts)
			local wk = require("which-key")
			wk.setup(opts)

			-- Aqui registramos os nomes dos grupos para o menu ficar bonito
			wk.add({
				{ "<leader>f", group = "Arquivos/Busca (Telescope/Format)" },
				{ "<leader>g", group = "Git" },
				{ "<leader>h", group = "Git Hunks (Gitsigns)" },
				{ "<leader>e", desc = "Navegador de Arquivos" },
			})
		end,
	},
}
