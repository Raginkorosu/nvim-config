local status_ok, impatient = pcall(require, "impatient")
if not status_ok then
    vim.notify("Could not find impatient")
    return
end

impatient.enable_profile()
