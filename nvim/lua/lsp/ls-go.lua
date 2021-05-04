if not require('lsp').ls_installed('go') then
    return
end

require('lspconfig')['go'].setup {
    cmd = { vim.fn.stdpath('data') .. '/lspinstall/go/gopls' },
    settings = {gopls = {analyses = {unusedparams = true}, staticcheck = true}},
    root_dir = require'lspconfig'.util.root_pattern('.git','go.mod','.'),
    init_options = {usePlaceholders = true, completeUnimported = true},
    on_attach = require('lsp').on_attach
}
