local dap = require('dap')
local result = 'python'

if io.open('Pipfile')
then
    local handle = io.popen("pipenv run which python")
    result = handle:read("*a")
    result = result:sub(1, -2)
    handle:close()
end

dap.adapters.python = {
    type = 'executable';
    command = result;
    args = { '-m', 'debugpy.adapter' };
}

dap.configurations.python = {
    {
        type = 'python',
        request = 'launch',
        name = 'Django',
        program = vim.fn.getcwd() .. '/manage.py',  -- NOTE: Adapt path to manage.py as needed
        args = {'runserver', '--noreload'},
    }
}

vim.keymap.set("n", "<leader>dt", ":DapToggleBreakpoint<CR>")
vim.keymap.set("n", "<leader>dr", ":DapToggleRepl<CR>")
vim.keymap.set("n", "<leader>dc", ":DapContinue<CR>")
