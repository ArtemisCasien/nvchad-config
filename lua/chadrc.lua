-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}
local highlights = require"highlights"

  local headers = require "ui.header"
  local function get_header(name)
  if vim.g.random_header then
    local keys = {}
    for k, _ in pairs(headers) do
      table.insert(keys, k)
    end
    return headers[keys[math.random(#keys)]]
  end

  -- fallback if header does not exist
  if not name or name == "" or not headers[name] then
    return headers.default
  end

  return headers[name]
end
M.base46 = {
	theme = "catppuccin",
	hl_override = {
    hl_override = highlights.override,
    hl_add = highlights.add
	},
  transparency = true
}

require("barbecue.ui").toggle(true)
require("barbecue.ui").update()
M.nvdash = {

  load_on_startup = true, 
  header = get_header "nvim"

}

M.ui = {
      tabufline = {
         lazyload = false
     }
}

return M
