
local cmp     = require("cmp")
local luasnip = require("luasnip")
require("luasnip.loaders.from_vscode").lazy_load()

cmp.setup({
  snippet = { expand = function(args) luasnip.lsp_expand(args.body) end },
  mapping = cmp.mapping.preset.insert({
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<Tab>"]    = cmp.mapping.select_next_item(),
    ["<S-Tab>"]  = cmp.mapping.select_prev_item(),
    ["<CR>"]     = cmp.mapping.confirm({ select = true }),
  }),
  sources = {
    { name = "nvim_lsp" },
    { name = "luasnip" },
    { name = "buffer" },
    { name = "path" },
  },
  formatting = { format = require("lspkind").cmp_format({ with_text = true }) },
})
