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
            a = { fg = "#8be9fd", bg = "#09080C", gui = "bold" },
            b = { fg = "#ff79c6", bg = "#09080C" },
            c = { fg = "#6272a4", bg = "#09080C" },
        },
        visual = {
            a = { fg = "#8be9fd", bg = "#09080C", gui = "bold" },
            b = { fg = "#ff79c6", bg = "#09080C" },
            c = { fg = "#6272a4", bg = "#09080C" },
        },
        replace = {
            a = { fg = "#8be9fd", bg = "#09080C", gui = "bold" },
            b = { fg = "#ff79c6", bg = "#09080C" },
            c = { fg = "#6272a4", bg = "#09080C" },
        },
        normal = {
            a = { fg = "#8be9fd", bg = "#09080C", gui = "bold" },
            b = { fg = "#ff79c6", bg = "#09080C" },
            c = { fg = "#6272a4", bg = "#09080C" },
        },
        insert = {
            a = { fg = "#8be9fd", bg = "#09080C", gui = "bold" },
            b = { fg = "#ff79c6", bg = "#09080C" },
            c = { fg = "#6272a4", bg = "#09080C" },
        },
        command = {
            a = { fg = "#8be9fd", bg = "#09080C", gui = "bold" },
            b = { fg = "#ff79c6", bg = "#09080C" },
            c = { fg = "#6272a4", bg = "#09080C" },
        },
    }
end
return M
