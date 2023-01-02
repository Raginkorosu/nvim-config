local colorscheme = "catppuccin"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
    vim.notify("colorscheme " .. colorscheme .. " not found!")
    return
else
    vim.g.catppuccin_flavour = "macchiato"
    vim.cmd[[colorscheme catppuccin]]
end
