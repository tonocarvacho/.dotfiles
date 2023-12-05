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
            a = { fg = "#8be9fd", bg = "#000000", gui = "bold" },
            b = { fg = "#ff79c6", bg = "#000000" },
            c = { fg = "#6272a4", bg = "#000000" },
        },
        visual = {
            a = { fg = "#8be9fd", bg = "#000000", gui = "bold" },
            b = { fg = "#ff79c6", bg = "#000000" },
            c = { fg = "#6272a4", bg = "#000000" },
        },
        replace = {
            a = { fg = "#8be9fd", bg = "#000000", gui = "bold" },
            b = { fg = "#ff79c6", bg = "#000000" },
            c = { fg = "#6272a4", bg = "#000000" },
        },
        normal = {
            a = { fg = "#8be9fd", bg = "#000000", gui = "bold" },
            b = { fg = "#ff79c6", bg = "#000000" },
            c = { fg = "#6272a4", bg = "#000000" },
        },
        insert = {
            a = { fg = "#8be9fd", bg = "#000000", gui = "bold" },
            b = { fg = "#ff79c6", bg = "#000000" },
            c = { fg = "#6272a4", bg = "#000000" },
        },
        command = {
            a = { fg = "#8be9fd", bg = "#000000", gui = "bold" },
            b = { fg = "#ff79c6", bg = "#000000" },
            c = { fg = "#6272a4", bg = "#000000" },
        },
    }
end
return M
