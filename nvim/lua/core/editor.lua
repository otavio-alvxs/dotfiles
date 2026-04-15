local api = vim.api
local opt = vim.opt
local g = vim.g

local function set_globals()
	g.mapleader = " "
end

local function set_mappings()
	vim.keymap.set("n", "<leader>e", "<Cmd>NvimTreeToggle<CR>", { desc = "Abrir/Fechar Navegador" })

	vim.keymap.set("n", "<A-h>", "<C-w>h", { desc = "Ir para a janela da esquerda" })
	vim.keymap.set("n", "<A-j>", "<C-w>j", { desc = "Ir para a janela de baixo" })
	vim.keymap.set("n", "<A-k>", "<C-w>k", { desc = "Ir para a janela de cima" })
	vim.keymap.set("n", "<A-l>", "<C-w>l", { desc = "Ir para a janela da direita" })
end

local function set_options()
	local options = {
		number = true,
		relativenumber = true,
		shiftwidth = 4,
		tabstop = 4,
		expandtab = true,
		termguicolors = true,
		clipboard = "unnamedplus",
		inccommand = "split",
		laststatus = 3, -- Corrigido: adicionado o "s" que faltava
		cmdheight = 0, -- Deixa o visual colado no fundo
		showmode = false, -- Esconde o -- INSERT -- manual
	}

	for key, val in pairs(options) do
		opt[key] = val
	end

	vim.cmd([[
		cnoreabbrev W w
    	cnoreabbrev W! w!
		cnoreabbrev Q q
		cnoreabbrev Q! q!
		cnoreabbrev Qa qa
		cnoreabbrev Qa! qa!	
		cnoreabbrev Wq wq
		cnoreabbrev Wa wa
		cnoreabbrev WQ wq
		cnoreabbrev Wqa wqa
    ]])
end

set_globals()
set_options()
set_mappings()
