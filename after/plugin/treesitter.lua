require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = { "c", "lua", "vim", "help", "query", "javascript", "typescript", "css", "svelte", "tsx", },

  sync_install = false,

  auto_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  query_linter = {
    enable = true,
    use_virtual_text = true,
    lint_events = { "BufWrite", "CursorHold" },
    custom_events = { "FileType" },
    severity = "error",
    context = {
      source = "tsx",
      action = "indent",
      pattern = "[(...) @jsx_tag",
      before = "jsx_element",
      after = "jsx_element",
    },
  },

  autotag = {
    enable = true,
    filetypes = { "typescript", "tsx", "typescriptreact", },
  }
}
