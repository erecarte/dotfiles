return {
  'Exafunction/windsurf.vim',
  event = 'BufEnter',
  config = function()
    vim.g.codeium_disable_bindings = 1
    vim.keymap.set('i', '<Tab>', function()
      return vim.fn['codeium#Accept']()
    end, { expr = true })
    vim.keymap.set('i', '<A-f>', function()
      return vim.fn['codeium#CycleCompletions'](1)
    end, { expr = true })
    vim.keymap.set('i', '<A-b>', function()
      return vim.fn['codeium#CycleCompletions'](-1)
    end, { expr = true })
    vim.keymap.set('i', '<A-x>', function()
      return vim.fn['codeium#Clear']()
    end, { expr = true })
    vim.keymap.set('i', '<A-s>', function()
      return vim.fn['codeium#Complete']()
    end, { expr = true })
  end,
}
