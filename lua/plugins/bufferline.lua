return {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    init = function()
        vim.opt.termguicolors = true
    end,
    opts = {
        options = {
            mode = "buffers",
            close_command = "bdelete! %d",
            right_mouse_command = "bdelete! %d",
            left_mouse_command = "buffer %d",
            middle_mouse_command = nil,
            indicator = {
                icon = '▎',
                style = 'icon',
            },
            buffer_close_icon = '󰅖',
            modified_icon = '● ',
            close_icon = ' ',
            left_trunc_marker = ' ',
            right_trunc_marker = ' ',
            diagnostics = "nvim_lsp",
            diagnostics_update_on_event = true,
            offsets = {
                {
                    filetype = "NvimTree",
                    text = "Neovim v0.12.5",
                    text_align = "center",
                    separator = true,
                }
            }
        }
    }
}
