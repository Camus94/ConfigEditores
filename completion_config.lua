-- Configuración de cmp
local cmp = require("cmp")

cmp.setup({
  snippet = {
    expand = function(args)
      require("luasnip").lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
    ["<Tab>"] = cmp.mapping.select_next_item(),
    ["<S-Tab>"] = cmp.mapping.select_prev_item(),
  }),
  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "luasnip" },
  }, {
    { name = "buffer" },
  })
})

-- Configuración de LSPs
local lspconfig = require("lspconfig")

-- Python con pyright
lspconfig.pyright.setup({
  cmd = { "/home/jhm/anaconda3/bin/pyright-langserver", "--stdio" },
})

-- R con R Language Server
lspconfig.r_language_server.setup({})

