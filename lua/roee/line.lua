require('lualine').setup({
    options = {
        theme = 'OceanicNext',
        section_separators = { '', '' },
        component_separators = { '', '' },
        icons_enabled = true,
    },
    sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch' },
        lualine_c = {
            {
                'filename',
                path = 1,
            }
        },
        lualine_x = { 'fileformat', 'filetype' },
        lualine_y = { 'progress' },
        lualine_z = { 'location' }
    },
})
