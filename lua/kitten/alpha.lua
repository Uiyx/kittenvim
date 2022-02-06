local alpha_status_ok, alpha = pcall(require, "alpha")
if not alpha_status_ok then
  return
end

local dashboard_status_ok, dashboard = pcall(require, "alpha.themes.dashboard")
if not dashboard_status_ok then
  return
end


dashboard.section.header.val = {
[[              /\   /\                       ]],
[[ ██   ██ ████████ ████████ ███████ ███    ██]],
[[ ██  ██     ██       ██    ██      ████   ██]],
[[ █████    -_██  ^ ^  ██_-  █████   ████   ██]],
[[ ██  ██   __██>._I_.<██__  ██      ██ ██  ██]],
[[ ██   ██    ██       ██    ███████ ██  ██▄██]],
[[ ▀▀    ▄▄                          ▀▀   ▀▀▀▀]],
[[ ██    ██ ██ ███    ██                      ]],
[[ ██    ██ ▄▄ ████  ████                     ]],
[[ ██    ██ ██ ██ ████ ██                     ]],
[[  ██  ██  ██ ██  ██  ██                     ]],
[[   ████   ██ ██      ██                     ]],
}

dashboard.section.buttons.val = {
    dashboard.button( "e", "  New file" , ":ene <BAR> startinsert <CR>"),
    dashboard.button( "f", "🔍 Find files", ":lua require'telescope.builtin'.find_files(require('telescope.themes').get_ivy({}))<cr>"),
    dashboard.button( "g", "🔍 Find words", ":lua require'telescope.builtin'.live_grep(require('telescope.themes').get_ivy({}))<cr>"),
    dashboard.button( "q", "  Quit KittenVim" , ":qa<CR>"),
}
    dashboard.section.footer.val = "nya~"
    dashboard.config.opts.noautocmd = true
 alpha.setup(dashboard.config)
