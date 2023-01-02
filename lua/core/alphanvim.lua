local status_ok, alpha_nvim = pcall(require, "alpha")
if not status_ok then
    return
end

local alpha_dashboard_status_ok, alpha_dashboard_nvim = pcall(require, "alpha.themes.dashboard")
if not alpha_dashboard_status_ok then
    return
end


alpha_dashboard_nvim.section.header.val = {
	[[                               __                ]],
	[[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
	[[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
	[[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
	[[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
	[[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
}

alpha_dashboard_nvim.section.buttons.val = {
    alpha_dashboard_nvim.button("f", "  Find file", ":Telescope find_files <CR>"),
    alpha_dashboard_nvim.button("e", "  new file", ":ene <bar> startinsert <cr>"),
    alpha_dashboard_nvim.button("p", "  Find project", ":Telescope projects <CR>"),
    alpha_dashboard_nvim.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
    alpha_dashboard_nvim.button("t", "  Find text", ":Telescope live_grep <CR>"),
    alpha_dashboard_nvim.button("c", "  Configuration", ":e ~/.config/nvim/init.lua <CR>"),
    alpha_dashboard_nvim.button("q", "  Quit Neovim", ":qa<CR>"),
}

local function footer()
    return "Robby Walters"
end

alpha_dashboard_nvim.section.footer.val = footer()

alpha_dashboard_nvim.section.footer.opts.hl = "Type"
alpha_dashboard_nvim.section.header.opts.hl = "Include"
alpha_dashboard_nvim.section.buttons.opts.hl = "Keyword"

alpha_dashboard_nvim.opts.opts.noautocmd = true

alpha_nvim.setup(alpha_dashboard_nvim.opts)
