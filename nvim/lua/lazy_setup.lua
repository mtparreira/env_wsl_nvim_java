require("lazy").setup({
  -- Definindo plugins
  {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate", -- Pode configurar comandos de atualização, mas não automática
  },
  -- Outros plugins
}, {
  -- Opções gerais do lazy.nvim
  sync = false, -- Desabilita a sincronização automática de pacotes - ':Lazy update' para atualizar
})
