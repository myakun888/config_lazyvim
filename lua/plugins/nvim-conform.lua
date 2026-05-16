return {
  "stevearc/conform.nvim",
  opts = function(_, opts)
    opts.formatters_by_ft = opts.formatters_by_ft or {}
    opts.formatters = opts.formatters or {}

    -- NOTE::
    -- note , silahkan tambahkan formater untuk bahasa anda jika tidak anda

    -- js
    -- opts.formatters_by_ft.javascript = { "prettier","vtls" }
    --  jika lebih dari satu , maka yang di depan adalah priotritas , contoh diatas
    --
    -- Python
    -- opts.formatters_by_ft.python = { "black" }
    --
    -- Go
    -- opts.formatters_by_ft.go = { "gofmt" }
    --
    -- Rust
    -- opts.formatters_by_ft.rust = { "rustfmt" }
    --
    -- SQL
    -- opts.formatters_by_ft.sql = { "sqlfluff" }

    -- blade
    opts.formatters_by_ft["blade.php"] = { "blade_formatter" }
    opts.formatters_by_ft.blade = { "blade_formatter" }
    -- WARNING:
    --  ini depedency, config tambhan blade-formatter, jangan di hapus, karena blade blum ada di conform
    opts.formatters.blade_formatter = {
      command = "blade-formatter",
      args = { "--write", "$FILENAME" },
      stdin = false,
    }
  end,
}
