local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

--lsp.setup()
--local cmp=require('cmp')
--local cmp_select={behavior=cmp.SelectBehavior.Select}
--local cmp_mappings=lsp.defaults.cmp_mappings ({
--	['<leader>Up']=cmp.mapping.select_prev_item(cmp_select),
--	['<leader>Down']=cmp.mapping.select_next_item(cmp_select),
--	['<leader>Tab']=cmp.mapping.confirm({select=true}),
--	['<leader>CR']=cmp.mapping.confirm({select=true}),
--})

--lsp.setup()
