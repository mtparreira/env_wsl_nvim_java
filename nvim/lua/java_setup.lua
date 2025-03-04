require("java").setup()

require("lspconfig").jdtls.setup({})

require("dapui").setup({
	layouts = {
		{
			-- Primeiro layout: lateral (geralmente à direita)
			elements = {
				-- Defina quais elementos aparecem e em que ordem
				{ id = "scopes", size = 0.50 },
				{ id = "breakpoints", size = 0.10 },
				{ id = "stacks", size = 0.15 },
				{ id = "watches", size = 0.15 },
				{ id = "repl", size = 0.10 },
			},
			size = 45, -- Largura da janela
			position = "left", -- Pode ser "left" ou "right"
		},
		{
			-- Segundo layout: inferior
			elements = {
				--{ id = "repl", size = 0.5 },
				{ id = "console", size = 1 },
			},
			size = 20, -- Altura da janela
			position = "bottom", -- Pode ser "top" ou "bottom"
		},
	},
	floating = {
		max_height = 0.3, -- Altura máxima para janelas flutuantes
		max_width = 0.5, -- Largura máxima para janelas flutuantes
		border = "rounded", -- Estilo da borda: "single", "double", "rounded", etc.
		mappings = {
			close = { "q", "<Esc>" }, -- Atalhos para fechar janelas flutuantes
		},
	},
	windows = { indent = 1 }, -- Configuração de indentação
	render = {
		max_type_length = nil, -- Limite de comprimento para tipos de variáveis
	},
})
