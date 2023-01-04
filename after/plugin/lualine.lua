local navic = require("nvim-navic")
local custom_rose_pine = require 'lualine.themes.rose-pine'

local vim_modes = {'normal', 'visual', 'insert', 'command', 'replace', 'inactive'}
for _, mode in pairs(vim_modes) do
    custom_rose_pine[mode].b.bg = 'None'
    custom_rose_pine[mode].c.bg = 'None'
end

require('lualine').setup({
    options = {
        --- @usage 'rose-pine' | 'rose-pine-alt'
        theme = custom_rose_pine,
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
    },
    sections = {
        lualine_c = {
            { navic.get_location, cond = navic.is_available },
        }
    }
})
