local M = {}
M.theme = function()
    local colors = {
        gray = "#6272a4",
        darkgray = "#44475a",
        innerbg = nil,
        outerbg = "#16161D",
        normal = "#6272a4",
        insert = "#50fa7b",
        visual = "#f1fa8c",
        replace = "#ff5555",
        command = "#ffb86c",
    }
    return {
        inactive = {
            a = { fg = colors.gray, bg = colors.innerbg, gui = "bold" },
            b = { fg = "#6272a4", bg = "#000000" },
            c = { fg = "#6272a4", bg = "#000000" },
        },
        visual = {
            a = { fg = colors.innerbg, bg = colors.visual, gui = "bold" },
            b = { fg = "#6272a4", bg = "#000000" },
            c = { fg = "#6272a4", bg = "#000000" },
        },
        replace = {
            a = { fg = "#000000", bg = colors.replace, gui = "bold" },
            b = { fg = "#6272a4", bg = "#000000" },
            c = { fg = "#6272a4", bg = "#000000" },
        },
        normal = {
            a = { fg = "#000000", bg = colors.normal, gui = "bold" },
            b = { fg = "#6272a4", bg = "#000000" },
            c = { fg = "#6272a4", bg = "#000000" },
        },
        insert = {
            a = { fg = "#000000", bg = colors.insert, gui = "bold" },
            b = { fg = "#6272a4", bg = "#000000" },
            c = { fg = "#6272a4", bg = "#000000" },
        },
        command = {
            a = { fg = "#000000", bg = colors.command, gui = "bold" },
            b = { fg = "#6272a4", bg = "#000000" },
            c = { fg = "#6272a4", bg = "#000000" },
        },
    }
end
return M
