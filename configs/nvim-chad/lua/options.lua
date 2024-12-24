require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

-- enable spell check
vim.opt.spell = true 
vim.opt.spelllang = "en_us"

vim.opt.textwidth = 80
vim.opt.linebreak = true

vim.g.markdown_recommended_style = 0

-- Neovide Settings --
if vim.g.neovide then
  vim.g.neovide_transparency = 0.95

  vim.g.neovide_padding_top = 20
  vim.g.neovide_padding_bottom = 0
  vim.g.neovide_padding_right = 10
  vim.g.neovide_padding_left = 15

  -- vim.keymap.set({'n', 'v'}, '<C-c>', '"+y', {noremap = true})
  -- vim.keymap.set({'n', 'v'}, '<C-v>', '"+p', {noremap = true})
  vim.api.nvim_set_keymap('v', '<sc-c>', '"+y', {noremap = true})
	vim.api.nvim_set_keymap('n', '<sc-v>', 'l"+P', {noremap = true})
	vim.api.nvim_set_keymap('v', '<sc-v>', '"+P', {noremap = true})
	vim.api.nvim_set_keymap('c', '<sc-v>', '<C-o>l<C-o>"+<C-o>P<C-o>l', {noremap = true})
	vim.api.nvim_set_keymap('i', '<sc-v>', '<ESC>l"+Pli', {noremap = true})
	vim.api.nvim_set_keymap('t', '<sc-v>', '<C-\\><C-n>"+Pi', {noremap = true})
end

