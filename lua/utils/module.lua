local M = {}

-- 加载指定目录下所有lua文件
M.load_modules = function(path)
  local _path = vim.fn.stdpath("config") .. "/lua/" .. path
  local file_list = vim.fn.readdir(_path)
  local tab = {}
  for _, file_name in pairs(file_list) do
    if vim.endswith(file_name, ".lua") then
      local use_name = string.sub(file_name, 1, #file_name - 4)
      table.insert(tab, require(path .. "/" .. use_name))
    end
  end
  return tab
end

return M
