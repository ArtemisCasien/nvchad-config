return {
  "shellRaining/hlchunk.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
                "Darazaki/indent-o-matic",
  },
        opts = {
                chunk = {
            enable = true,
            style = "#7287fd",
            chars = {
                horizontal_line = "─",
                vertical_line = "│",
                left_top = "╭",
                left_bottom = "╰",
                right_arrow = ">",
            },
            duration = 200,
            delay = 100,
        },
        indent = {
            enable = false,
            ahead_lines = 100,
            style = Colors,
            chars = {
                -- "▎",
                "│",
                -- "¦",
                -- "┆",
                -- "┊",
            },
        },
        blank = {
            enable = false,
            ahead_lines = 100,
            style = Colors,
            chars = {
                "····",
                -- " ․․",
                -- " ⁚⁚",
                -- " ⁖⁖",
                -- " ⁘⁘",
                -- " ⁙⁙",
                -- " ⁙⁙",
            },
        },
        }
}
