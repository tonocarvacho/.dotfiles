local M = {}
M.theme = function()
    local colors = {
        gray = "#6272a4",
        darkgray = "#44475a",
        innerbg = nil,
        outerbg = "#16161D",
        normal = "#bd93f9",
        insert = "#50fa7b",
        visual = "#f1fa8c",
        replace = "#ff5555",
        command = "#ffb86c",
    }
    return {
        inactive = {
            a = { fg = colors.gray, bg = colors.outerbg, gui = "bold" },
            b = { fg = white, bg = colors.darkgray },
            c = { fg = white, bg = colors.outerbg },
        },
        visual = {
            a = { fg = colors.darkgray, bg = colors.visual, gui = "bold" },
            b = { fg = white, bg = colors.darkgray },
            c = { fg = white, bg = colors.outerbg },
        },
        replace = {
            a = { fg = colors.darkgray, bg = colors.replace, gui = "bold" },
            b = { fg = white, bg = colors.darkgray },
            c = { fg = white, bg = colors.outerbg },
        },
        normal = {
            a = { fg = colors.darkgray, bg = colors.normal, gui = "bold" },
            b = { fg = white, bg = colors.darkgray },
            c = { fg = white, bg = colors.outerbg },
        },
        insert = {
            a = { fg = colors.darkgray, bg = colors.insert, gui = "bold" },
            b = { fg = white, bg = colors.darkgray },
            c = { fg = white, bg = colors.outerbg },
        },
        command = {
            a = { fg = colors.darkgray, bg = colors.command, gui = "bold" },
            b = { fg = white, bg = colors.darkgray },
            c = { fg = white, bg = colors.outerbg },
        },
    }
end
return M
