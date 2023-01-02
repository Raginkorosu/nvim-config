local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
   return
end

lualine.setup {
    options = {
        component_separators = '|',
        section_separators = { left = '', right = '' },
    },
    sections = {
        lualine_a = {
            { 'mode', separator = { left = '' }, right_padding = 2 },
        },
        lualine_b = { 'filename', 'filetype', },
        lualine_c = {
            {
                'diagnostics',
                source = { 'nvim-diagnostic' },
                symbols = { error = " ", warn = " ", hint = " ", info = " " },
            },
        },
        lualine_x = { 'encoding', 'fileformat' },
        lualine_y = {
            { 'diff', symbols = { added = ' ', modified = '~ ', removed = ' '} },
            'branch',
        },
        lualine_z = { 'progress',
            { 'location', separator = { right = ''}, left_padding = 2 },
        },
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
    },
    tabline = {},
    extensions = {},
}
