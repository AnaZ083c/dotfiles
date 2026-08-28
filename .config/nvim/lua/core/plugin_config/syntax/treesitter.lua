local parsers = {
  "c",
  "lua",
  "rasi",
  "rust",
  "requirements",
  "ruby",
  "rego",
  "vim",
  "html",
  "xml",
  "json",
  "jinja",
  "yaml",
  "dockerfile",
  "make",
  "python",
  "css",
  "scss",
  "markdown",
  "markdown_inline",
  "go",
  "terraform",
}

require('nvim-treesitter').setup {
  install_dir = vim.fn.stdpath('data') .. '/site'
}

require('nvim-treesitter').install(parsers):wait(300000) -- wait max. 5 minutes

vim.api.nvim_create_autocmd('FileType', {
  pattern = parsers,
  callback = function() vim.treesitter.start() end,
})

vim.api.nvim_create_autocmd('FileType', {
  pattern = parsers,
  callback = function() vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()" end,
})

vim.filetype.add({
  extension = {
    tfstate = "json",
    j2 = "jinja",
    rasi = "rasi",
    codecompanion = "markdown",
    vimwiki = "markdown",
    yml = "yaml.ansible",
  },
})

