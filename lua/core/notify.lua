local ok_nvim_notify, nvim_notify = pcall(require, "notify")

if  not ok_nvim_notify then
    print("Could not find the plugin 'notify'")
end

vim.notify = nvim_notify

nvim_notify.setup{}
