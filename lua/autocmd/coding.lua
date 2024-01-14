local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
augroup("__formatter__", { clear = true })
autocmd("BufWritePost", {
  group = "__formatter__",
  callback = function()
    vim.cmd(":FormatWrite")
    require("utils.log").print("cmd __formatter__")
  end,
})
