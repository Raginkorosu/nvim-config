local status_ok, glow = pcall(require, "glow")
if not status_ok then
    vim.notify("Could not find glow!!!")
    return
else
glow.setup{}
end


