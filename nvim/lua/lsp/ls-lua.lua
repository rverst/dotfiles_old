if not require('lsp').ls_installed('lua') then
    return
end

local sumneko_root = vim.fn.stdpath('data') .. '/lspinstall/lua'
local sumneko_bin = sumneko_root .. '/sumneko-lua-language-server'

print(sumneko_root)
print(sumneko_bin)
require('lspconfig')['lua'].setup {
    cmd = {sumneko_bin, '-E', sumneko_root.. '/main.lua'},
    on_attach = require('lsp').on_attach,
    settings = {
        Lua = {
            runtime = {
                -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                version = 'LuaJIT',
                -- Setup your lua path
                path = vim.split(package.path, ';')
            },
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = {'vim'}
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = {[vim.fn.expand('$VIMRUNTIME/lua')] = true, [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true},
                maxPreload = 10000
            }
        }
    }
}
