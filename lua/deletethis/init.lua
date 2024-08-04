local M = {}

M.delete = function()
    local current_file = vim.api.nvim_buf_get_name(0)
    vim.fn.delete(current_file)
end

M.setup = function()
    vim.api.nvim_create_user_command("DeleteThis", M.delete, {})
end

return M
