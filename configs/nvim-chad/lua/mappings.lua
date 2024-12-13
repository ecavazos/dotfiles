require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<Leader>fc",
          function()
            require("telescope.builtin").find_files {
              prompt_title = "Config Files",
              cwd = vim.fn.stdpath "config",
              follow = true,
            }
          end, 
  { desc = "telescope find config files" }
)

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
