return {
  "nvim-lspconfig",
  opts = {
    servers = {
      emmet_language_server = {
        filetypes = { "html", "css", "javascript", "typescript", "jsx", "tsx" },
        init_options = {
          showSuggestionsAsSnippets = true,
        },
      },
      cssls = {
        settings = {
          css = {
            lint = {
              unknownAtRules = "ignore",
            },
          },
        },
      },
    },
  },
}
