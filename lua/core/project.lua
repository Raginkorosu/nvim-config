local status_ok, project = pcall(require, "project_nvim")

if not status_ok then
    return
end

project.setup({
    on_config_done = nil,
    manual_mode = false,
    detection_methods = { "pattern" },
    patterns = { ".git", "_darcs", ".hg", ".bzr", "Makefile", "package.json", "init.lua"},
    show_hidden = false,
    silent_chdir = true,
    ignore_lsp = {},
    datapath = vim.fn.stdpath("data")
})

local tele_status_ok, telescope = pcall(require, "telescope")
if not tele_status_ok then
    return
end

telescope.load_extension('projects')
