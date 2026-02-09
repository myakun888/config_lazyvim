return {

  -- NOTE: disini tempat colorscheme / tema , dibuat jadi satu file  .lua
  -- default nya tokyonight
  -- silahkan isi di sini, sesuai dengan scop nya, dan untuk meload nya ganti pada scopt lazyvim pada opts dengan nama tema nya
  -- agar rapi tutup fold, atau baris nya

  -- gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = true,
    opts = {

      strikethrough = true,
      invert_selection = false,
      invert_signs = false,
      invert_tabline = false,
      inverse = true, -- invert background for search, diffs, statuslines and errors
      contrast = "", -- can be "hard", "soft" or empty string
      palette_overrides = {},
      overrides = {},
      dim_inactive = false,
      transparent_mode = true,
    },
  },
  -- kanagawa
  {
    "rebelot/kanagawa.nvim",
    priority = 1000,

    opts = {
      compile = false, -- enable compiling the colorscheme
      undercurl = true, -- enable undercurls
      commentStyle = { italic = true },
      functionStyle = {},
      keywordStyle = { italic = true },
      statementStyle = { bold = true },
      typeStyle = {},
      transparent = true, -- do not set background color
      dimInactive = false, -- dim inactive window `:h hl-NormalNC`
      terminalColors = true, -- define vim.g.terminal_color_{0,17}
      colors = { -- add/modify theme and palette colors
        palette = {},
        theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
      },
      overrides = function(colors) -- add/modify highlights
        return {
          -- background utama
          Normal = { bg = "none" },
          NormalFloat = { bg = "none" },

          -- SIDEBAR (Neo-tree / NvimTree)
          NeoTreeNormal = { bg = "none" },
          NeoTreeNormalNC = { bg = "none" },
          NvimTreeNormal = { bg = "none" },

          -- garis & kolom
          SignColumn = { bg = "none" },
          WinSeparator = { bg = "none" },
          EndOfBuffer = { bg = "none" },
        }
      end,
      theme = "dragon", -- jika di kosongkan / all, maka akan di isi sesuai dengan jenis backgroud, dark / light
      background = { -- map the value of 'background' option to a theme
        dark = "dragon", -- try "dragon" !
        light = "lotus",
      },
    },
  },

  -- tokyonight
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },

  -- rosepine
  {
    "rose-pine/neovim",
    name = "rose-pine",
    opts = {
      variant = "auto", -- auto, main, moon, or dawn
      dark_variant = "main", -- main, moon, or dawn
      dim_inactive_windows = false,
      extend_background_behind_borders = true,

      styles = {
        bold = true,
        italic = true,
        transparency = true,
      },
    },
  },

  ---
  --- TODO: disini untuk configurasi load tema nya ,
  -- ini untuk load otomatis , agar lazyvim langsung menggunakan tema nya, saat di buka nvim
  -- jika ingin coba yang lain tampa load otomatis silahkan ke :colorscheme namatema
  --

  -- WARNING: PENTING !!!
  -- ini lah yang menentukan yang di jadikan colorshceme ketika di otomatis saat membuka lazyvim
  -- TODO: isi value colorscheme dengan nama tema yang di inginkan
  -- defaut nya adalaha tokyonight
  -- gruvbox, kanagawa
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight-night",
      -- colorscheme = "rose-pine",
    },
  },
}
