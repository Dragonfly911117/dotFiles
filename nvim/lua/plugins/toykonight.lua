return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    style = "night",
    on_colors = function(colors)
      colors.purple = "#8478de"
      colors.magenta = "#9d8cef"
    end,
    on_highlights = function(hl, c)
      hl.CursorLine = { bg = "#33467c" }
      hl.Visual = { bg = "#33467c" }
      hl["@keyword"] = { fg = "#8478de" }
      hl["@keyword.function"] = { fg = "#8478de" }
      hl["@keyword.return"] = { fg = "#8478de" }
      hl.Statement = { fg = "#8478de" }
      hl.Keyword = { fg = "#8478de" }
    end,
  },
  config = function(_, opts)
    require("tokyonight").setup(opts)
    vim.cmd([[colorscheme tokyonight]])
  end,
}

