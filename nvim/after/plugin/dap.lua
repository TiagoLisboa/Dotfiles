local dap = require('dap')
local handle = io.popen("pipenv run which python")
local result = handle:read("*a")
result = result:sub(1, -2)
handle:close()

dap.set_log_level('TRACE')

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
