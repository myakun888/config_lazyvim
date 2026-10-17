return {
  "shellRaining/hlchunk.nvim",
  event = { "BufReadPre", "BufNewFile" },

  opts = {

    -- banyak,  config selain chunk, bisa juga tambahkan ,
    -- indent, number
    -- silahkan cek dokumentasi resmi nya
    chunk = {
      enable = true,
      chars = {
        horizontal_line = "─",
        vertical_line = "│",
        left_top = "╭",
        left_bottom = "╰",
        right_arrow = ">",
      }, -- ...
      style = {
        { fg = "#00FF00" }, --ini untuk warna yang benar
        { fg = "#c21f30" }, -- ini untuk jika ada kesalahan , kurang sintax
      },
    },
    -- line number di buat false saja, issue lagh pada laravel file welcome.blade
    line_num = {

      -- ini berguna agar nomor/number aktiv dan diberikan warna, ketika berada dalam jangkauan cursor atau di kode yang sedang aktif
      enable = false,
      -- ini warna nya
      -- style = "#FFD700",
      style = "#DAA520",
    },
    -- indent = {
    -- }
  },
}
