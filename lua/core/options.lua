-- Set some basic options
vim.o.number = true --Show line numbers
vim.o.relativenumber = true
vim.o.cursorline = true
vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.scrolloff = 8
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.textwidth = 80
vim.o.wrap = true
vim.o.termguicolors = true
vim.opt.clipboard = "unnamedplus" --lets use the system clipboard for a seamless experience
-- Enable syntax highlighting and filetype detection
vim.filetype.plugin = true
vim.cmd([[set colorcolumn=80]])
vim.cmd([[set laststatus=3]])

vim.cmd.colorscheme("vague")
-- File: /home/aray/.config/nvim/lua/core/options.lua (or your dedicated LSP file)

local mason_path = vim.fn.stdpath("data") .. "/mason/packages/vue-language-server/node_modules/@vue/language-server"

-- 1. Configure vtsls (TypeScript) with the Vue plugin injected
vim.lsp.config("vtsls", {
	filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
	settings = {
		vtsls = {
			tsserver = {
				globalPlugins = {
					{
						name = "@vue/typescript-plugin",
						location = mason_path,
						languages = { "vue" },
						configNamespace = "typescript",
						enableForWorkspaceTypeScriptVersions = true,
					},
				},
			},
		},
	},
})

-- 2. Configure vue_ls
vim.lsp.config("vue_ls", {})

-- 3. Explicitly enable both clients to attach to your active buffers
vim.lsp.enable({ "vtsls", "vue_ls" })

--Conform
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		require("conform").format({ bufnr = args.buf })
	end,
})
