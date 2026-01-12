return {
  cmd = { "haskell-language-server-wrapper", "--lsp", "--logfile", "/Users/s.kruglov/hs.log" },
  settings = {
    haskell = {
      plugin = {
        rename = {
          globalOn = true,
        },
      },
      -- cabalFormattingProvider = "cabal-fmt",
      -- formattingProvider = "ormolu"
    },
  },
}
