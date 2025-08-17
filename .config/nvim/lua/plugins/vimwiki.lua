return {
  "vimwiki/vimwiki",
  init = function()
    vim.g.vimwiki_list = {
      {
        path = "~/vimwiki", -- folder where notes will be saved
        syntax = "markdown", -- so you can use normal markdown
        ext = ".md", -- files will end with .md
      },
    }
    vim.g.vimwiki_global_ext = 0 -- only treat files in wiki folder as wiki
  end,
}
