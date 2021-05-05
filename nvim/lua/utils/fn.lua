local M = {}

M.getOs = function()
  local sys = vim.loop.os_uname().sysname
  local rel = vim.loop.os_uname().release

  if sys == 'Darwin' then
    return OS.MacOs
  elseif sys == 'Linux' then
    if string.find(rel, 'WSL') ~= nil then
      return OS.WSL
    end
    return OS.Linux
  elseif sys == 'Windows' then
    return OS.Windows
  else
    return OS.Unknown
  end
end

M.joinPath = function(...)
  local args = {...}
  local sep = package.config:sub(1, 1)
  local path = ""

  for i, a in ipairs(args) do
    path = path .. a
    path = path .. sep

  end
  return path
end

return M
