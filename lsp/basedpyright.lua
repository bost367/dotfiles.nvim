return {
  settings = {
    basedpyright = {
      disableOrganizeImports = true, -- ruff organizes imports
      analysis = {
        diagnosticMode = "openFilesOnly",
        typeCheckingMode = "basic",
        useLibraryCodeForTypes = true,
      },
    },
  },
}
