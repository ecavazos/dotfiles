-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

-- For help with theme overrides see :h nvui.base46 

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "chadtain",

	hl_override = {
    DiffAdd = { fg = { "white", "green", 40 }, bg = { "black", "green", 15 } },
    DiffChange = { fg = { "white", "sun", 40 }, bg = { "black", "sun", 15 } },
    DiffDelete = { fg = { "white", "red", 40 }, bg = { "black", "red", 15 } },
    -- DiffChange = { fg = { "sun", -30 }, bg = { "sun", 0 } },
    -- DiffDelete = { fg = { "red", -30 }, bg = { "red", 0 } },
	},
  hl_add = {
    RenderMarkdownH4Bg = { fg = { "white", "dark_purple", 40 }, bg = { "black", "dark_purple", 15 } },
    RenderMarkdownH5Bg = { fg = { "white", "baby_pink", 40 }, bg = { "black", "baby_pink", 15 } },
    RenderMarkdownH6Bg = { fg = { "white", "nord_blue", 40 }, bg = { "black", "nord_blue", 15 } },
    -- RenderMarkdownH4Bg = { fg = { "teal", -30 }, bg = "teal" },
    -- RenderMarkdownH5Bg = { fg = { "purple", -30 }, bg = "purple" },
    -- RenderMarkdownH6Bg = { fg = { "one_bg", 30 }, bg = "one_bg" },
    ["@markup.heading.1.markdown"] = { fg = "green" },
    ["@markup.heading.2.markdown"] = { fg = "sun" },
    ["@markup.heading.3.markdown"] = { fg = "red" },
    ["@markup.heading.4.markdown"] = { fg = "dark_purple" },
    ["@markup.heading.5.markdown"] = { fg = "baby_pink" },
    ["@markup.heading.6.markdown"] = { fg = "nord_blue" },
  }
	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
}

return M
