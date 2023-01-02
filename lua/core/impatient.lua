local status_ok, impatient = pcall(require, "impatient.nvim")
if not status_ok then
    return
end

impatient.enable_profile()
