  
require("notify").setup({
  background_colour = "#000000",
    fps = 60,
    icons = {
      DEBUG = "",
      ERROR = "",
      INFO = "",
      TRACE = "✎",
      WARN = ""
    },
    level = 2,
    minimum_width = 50,
    render = "wrapped-compact",
    stages = "slide",
    timeout = 2500,
    top_down = false
  })
