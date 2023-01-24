require'nvim-treesitter.configs'.setup {
    textobjects = {
        select = {
            enable = true,

            lookahead = true,

            keymaps = {
                ["af"] = "@function.outer",
                ["if"] = "@function.inner",
                ["ac"] = "@class.outer",
                ["ic"] = { query = "@class.inner", desc = "Select inner part of a class region" },
                ["ap"] = "@attribute.outer",
                ["ip"] = "@attribute.inner",
                ["ab"] = "@block.outer",
                ["ib"] = "@block.inner",
            },
            -- TODO: movimentos para atributos do método atual

            selection_modes = {
                ['@parameter.outer'] = 'v', -- charwise
                ['@function.outer'] = 'V', -- linewise
                ['@class.outer'] = '<c-v>', -- blockwise
            },
        },
    },
}
