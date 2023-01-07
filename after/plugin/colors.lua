local default_colors = require("kanagawa.colors").setup()

local overrides = {
    IncSearch    = { bg = default_colors.lightBlue },
    WinSeparator = { fg = default_colors.dragonBlue },
    Visual = { bg = '#2d4f67' },
    --, bg = '#282C34' },
    StatusLine   = { bg = '#282C34' }
}

require 'kanagawa'.setup({
    overrides = overrides,
    transparent = true
})
vim.cmd("colorscheme kanagawa")
