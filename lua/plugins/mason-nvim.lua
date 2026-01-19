return {
  "mason.nvim",
  { "mason-org/mason-lspconfig.nvim", config = function() end },
  opts = {
    ensure_installed = {
      "stylua",
      "shfmt",
    },
  },
}
