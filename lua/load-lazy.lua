local M = {}

M.setup = function(plugins, opts)
  local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
  if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
      "git",
      "clone",
      "--filter=blob:none",
      "https://github.com/folke/lazy.nvim.git",
      "--branch=stable", -- latest stable release
      lazypath,
    })
  end
  vim.opt.rtp:prepend(lazypath)
  if M.check() then
    require("lazy").setup(plugins, opts)
  end
end

M.check = function()
  local status, lazy = pcall(require, "lazy")
  if not status then
    print("lazy 未找到")
  end
  return status
end

return M
