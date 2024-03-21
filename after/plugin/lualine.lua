require('lualine').setup({
    options = {
        theme = 'horizon',
        section_separators = {'', ''},
        component_separators = {'', ''},
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch'},
        lualine_c = {{'filename', path = 1}},
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'},
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {},
    },
    extensions = {'fugitive', 'nvim-tree', 'quickfix', 'toggleterm'},
})
