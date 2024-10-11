return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        { "folke/neodev.nvim", opts = {} },
    },
    config = function()
        local nvim_lsp = require("lspconfig")
        local mason_lspconfig = require("mason-lspconfig")

        local protocol = require("vim.lsp.protocol")
        local on_attach = (function(client, bufnr)
            local opts = { buffer = bufnr, remap = false }
            vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
            vim.keymap.set("n", "gi", function() vim.lsp.buf.implementation() end, opts)
            vim.keymap.set("n", "<leader>a", function() vim.lsp.buf.code_action() end, opts)
            vim.keymap.set("n", "<leader>f", function() vim.lsp.buf.format() end, opts)
            vim.keymap.set("n", "<leader>r", function() vim.lsp.buf.rename() end, opts)
            vim.keymap.set("n", "<leader>rr", function() vim.lsp.buf.references() end, opts)
            vim.keymap.set("n", "<leader>ne", function() vim.diagnostic.goto_next() end, opts)
            vim.keymap.set("n", "<leader>pe", function() vim.diagnostic.goto_prev() end, opts)
            vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
            vim.keymap.set("n", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
            vim.keymap.set("n", "<leader>od", function() vim.diagnostic.open_float() end, opts)
        end)
        local capabilities = require("cmp_nvim_lsp").default_capabilities()
        mason_lspconfig.setup({
            ensure_installed = { "lua_ls", "gopls", "sqls" },
            capabilities=capabilities
        })

        mason_lspconfig.setup_handlers({
            function(server_name)
                nvim_lsp[server_name].setup {
                    on_attach = on_attach,
                    capabilities = capabilities,
                }
            end,
        })
    end,
}
