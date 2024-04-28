local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
    'rust_analyzer',
    'clangd',
    'lua_ls'
})


-- Fix Undefined global 'vim'
lsp.nvim_workspace()

-- DORADI
local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
    ["<C-Up>"] = cmp.mapping.select_prev_item(cmp_select),
    ["<C-Down>"] = cmp.mapping.select_next_item(cmp_select),
    ["<C-Enter>"] = cmp.mapping.confirm({ select = true }),
    ["<C-1>"] = cmp.mapping.complete(),
})

lsp.setup_nvim_cmp({
    mapping = cmp_mappings
})

lsp.set_preferences({
    suggest_lsp_servers = true,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})

lsp.on_attach(function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }

    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>od", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "<leader>ne", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "<leader>pe", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "<leader>.", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>rr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("n", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

local augroup = vim.api.nvim_create_augroup('LspFormatting', {})
local lsp_format_on_save = function(bufnr)
    vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
    vim.api.nvim_create_autocmd('BufWritePre', {
        group = augroup,
        buffer = bufnr,
        callback = function()
            vim.lsp.buf.format()
        end,
    })
end

lsp.preset('recommended')

lsp.on_attach(function(client, bufnr)
    lsp_format_on_save(bufnr)
end)

lsp.setup()
