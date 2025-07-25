---@type ChadrcConfig
local M = {}

vim.cmd [[
  highlight IndentBlanklineChar guifg=#3b4261 gui=nocombine
  highlight IndentBlanklineScopeChar guifg=#7aa2f7 gui=nocombine
]]



M.base46 = {
  theme = "rosepine",
  hl_override = require("custom.highlights").override,
  -- hl_override = {
  --   Comment = { italic = true },
  --   ["@comment"] = { italic = true },
  -- },
  transparency = true,
}

M.plugins = "plugins" -- loads lua/plugins/init.lua

return M
