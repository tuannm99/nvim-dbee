-- This file is automatically generated using "dbee -manifest <file>"
-- DO NOT EDIT!

return function()
  -- Register host
  vim.fn["remote#host#Register"]("nvim_dbee", "x", function()
    return vim.fn.jobstart({ "dbee" }, {
      rpc = true,
      detach = true,
      on_stderr = function(_, data, _)
        for _, line in ipairs(data) do
          print(line)
        end
      end,
    })
  end)

  -- Manifest
  vim.fn["remote#host#RegisterPlugin"]("nvim_dbee", "0", {
    { type = "function", name = "DbeeAddHelpers", sync = true, opts = vim.empty_dict() },
    { type = "function", name = "DbeeCallCancel", sync = true, opts = vim.empty_dict() },
    { type = "function", name = "DbeeCallDisplayResult", sync = true, opts = vim.empty_dict() },
    { type = "function", name = "DbeeCallStoreResult", sync = true, opts = vim.empty_dict() },
    { type = "function", name = "DbeeConnectionExecute", sync = true, opts = vim.empty_dict() },
    { type = "function", name = "DbeeConnectionGetCalls", sync = true, opts = vim.empty_dict() },
    { type = "function", name = "DbeeConnectionGetColumns", sync = true, opts = vim.empty_dict() },
    { type = "function", name = "DbeeConnectionGetHelpers", sync = true, opts = vim.empty_dict() },
    { type = "function", name = "DbeeConnectionGetParams", sync = true, opts = vim.empty_dict() },
    { type = "function", name = "DbeeConnectionGetStructure", sync = true, opts = vim.empty_dict() },
    { type = "function", name = "DbeeConnectionListDatabases", sync = true, opts = vim.empty_dict() },
    { type = "function", name = "DbeeConnectionSelectDatabase", sync = true, opts = vim.empty_dict() },
    { type = "function", name = "DbeeCreateConnection", sync = true, opts = vim.empty_dict() },
    { type = "function", name = "DbeeGetConnections", sync = true, opts = vim.empty_dict() },
    { type = "function", name = "DbeeGetCurrentConnection", sync = true, opts = vim.empty_dict() },
    { type = "function", name = "DbeeSetCurrentConnection", sync = true, opts = vim.empty_dict() },
  })
end