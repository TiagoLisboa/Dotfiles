local navic = require("nvim-navic")

local function get_location()
    local location = navic.get_location()
    return location
end

require('lualine').setup({
    options = {
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
    },
    sections = {
        lualine_c = {
            { get_location, cond = navic.is_available }
        }
    }
})
