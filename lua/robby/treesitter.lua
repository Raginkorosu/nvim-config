local status_ok, treesitter_configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
    return
end

local treesitter_servers = {
    'bash',
    'c',
    'c_sharp',
    'cmake',
    'cpp',
    'css',
    'dockerfile',
    'go',
    'html',
    'http',
    'java',
    'json',
    'javascript',
    'lua',
    'regex',
    'rust',
    'scss',
    'sql',
    'toml',
    'typescript',
    'tsx',
    'vim',
    'yaml'
}


treesitter_configs.setup {
    ensure_installed = treesitter_servers,
    sync_install = false,
    autopairs = {
        enable = true
    },
    highlight = {
        enable = true,
        disable = { " " },
        additional_vim_regex_highlighting = true
    },
    indent = { enable = true, disable = {""}}
}
