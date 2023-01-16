vim.g.multi_cursor_use_default_mapping=0

vim.g.multi_cursor_start_word_key = '<C-n>'
vim.g.multi_cursor_select_all_word_key = '<A-n>'
vim.g.multi_cursor_start_key = 'g<C-n>'
vim.g.multi_cursor_select_all_key = 'g<A-n>'
vim.g.multi_cursor_next_key = '<C-n>'
vim.g.multi_cursor_prev_key = '<C-p>'
vim.g.multi_cursor_skip_key = '<C-x>'
vim.g.multi_cursor_quit_key = '<Esc>'

vim.api.nvim_set_keymap('n', 'k', "v:count == 0 ? 'gk' : 'k'", { noremap = true, expr = true, silent = true })
vim.api.nvim_set_keymap('n', 'j', "v:count == 0 ? 'gj' : 'j'", { noremap = true, expr = true, silent = true })

--Map blankline
--vim.g.indent_blankline_char = '┊'
vim.g.indent_blankline_filetype_exclude = { 'help', 'packer' }
vim.g.indent_blankline_buftype_exclude = { 'terminal', 'nofile' }
vim.g.indent_blankline_char_highlight = 'LineNr'
vim.g.indent_blankline_show_trailing_blankline_indent = false


-- Highlight on yank
vim.api.nvim_exec(
  [[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]],
  false
)

-- Y yank until the end of line
vim.api.nvim_set_keymap('n', 'Y', 'y$', { noremap = true })


