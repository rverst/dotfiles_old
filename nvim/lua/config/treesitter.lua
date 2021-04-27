local ts = require('nvim-treesitter.configs')

ts.setup {
    ensure_installed = {
        'lua',
        'go',
        'c',
        'cpp',
        'c_sharp',
        'bash',
        'java',
        'kotlin',
        'json',
        'regex',
        'yaml',
        'typescript',
        'html',
        'css',
        'graphql'
    },
    highlight = {
        enable = true,
        use_languagetree = true,
    },
}

