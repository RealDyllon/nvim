require("config.lazy")

-- Enable line numbers
vim.opt.number = true

-- Optional: Enable relative line numbers
vim.opt.relativenumber = true

-- Open Neotree on startup
vim.api.nvim_command('Neotree')

-- Function to move focus to the active buffer
local function focus_active_buffer()
    vim.cmd('wincmd p') -- Switch focus to the previous window
end

-- Call the function to move focus after a short delay
vim.defer_fn(focus_active_buffer, 20) -- 100 milliseconds delay

