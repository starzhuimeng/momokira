local M = {}
M.install = function()
  local require = require("middleware.require")
  local plugins = require("utils.module").load_modules("core")
  require("load-lazy").setup(plugins)
  require("autocmd.coding")
  require("keymapping")
  require("options")
end
return M
