return {
  "rafamadriz/friendly-snippets",
  config = function()
    require("luasnip.loaders.from_vscode").lazy_load()
    require("luasnip.loaders.from_vscode").lazy_load({ paths = { vim.fn.stdpath("config") .. "/snippets" } })
    -- ini agar file php dapat membaca html, javascript
    require("luasnip").filetype_extend("php", { "html", "javascript" })
    -- ini agar file html dapat membaca snipet css, javascritp
    require("luasnip").filetype_extend("html", { "css", "javascript" })
  end,
}

-- return {
--   "rafamadriz/friendly-snippets",
--   dependencies = { "L3MON4D3/LuaSnip" },
--   config = function()
--     print(">>>> KONFIGURASI SNIPPET BERHASIL DIMUAT <<<<")
--     -- Load snippet dari friendly-snippets
--     require("luasnip.loaders.from_vscode").lazy_load()
--     -- Load snippet tambahan dari folder custom
--     require("luasnip.loaders.from_vscode").lazy_load({
--       paths = { vim.fn.stdpath("config") .. "/snippets" },
--     })
--     -- Extend PHP agar bisa menggunakan snippet HTML
--     require("luasnip").filetype_extend("php", { "html" })
--     -- Extend HTML agar bisa menggunakan snippet JavaScript
--     require("luasnip").filetype_extend("html", { "javascript" })
--   end,
-- }
