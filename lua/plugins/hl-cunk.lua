return {
  "shellRaining/hlchunk.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("hlchunk").setup({

      chunk = {
        enable = true,
        priority = 15,
        chars = {
          horizontal_line = "─",
          vertical_line = "│",
          left_top = "╭",
          left_bottom = "╰",
          -- right_arrow = "> ",
          right_arrow = " ",
        },
        style = {
          { fg = "#00FF00" }, -- ini color untuk sintax sudah benar
          { fg = "#c21f30" }, -- ini color untuk jika syntax salah
        },
      },
      -- inidentasi
      indent = {
        enable = false, -- jadikan true jika ingin mengaktifkan
        -- chars = {
        --   "│",
        -- },
        ahead_lines = 5,
        style = {
          "#FF0000",
          "#FF7F00",
          "#FFFF00",
          "#00FF00",
          "#00FFFF",
          "#0000FF",
          "#8B00FF",
        },
      },
      line_num = {

        enable = true,
        style = "#DAA520",
      },
    })
  end,
}
