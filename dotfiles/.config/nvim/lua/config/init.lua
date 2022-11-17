req("config/cmp")

local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())


req("config/treesitter")
req("config/lsp")
req("config/colorscheme")
req("config/telescope")
