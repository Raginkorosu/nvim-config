local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
    vim.notify("Could not find bufferline!!!")
    return
end

bufferline.setup{}
