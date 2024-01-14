local M = {}
M.level = {
  INFO = "info: ",
  WARNING = "warning: ",
  ERROR = "error: ",
}

M.print = function(msg, level)
  local fp = io.open("/Users/sean/.config/nvim/log/runtime.txt", "a")
  fp:write(level or M.level.INFO .. msg .. " " .. os.date() .. "\n")
  fp:close()
end

return M
