return {
  "NLKNguyen/papercolor-theme",
  priority = 1000,
  config = function()
    -- White background
    vim.o.background = "light"
    -- Apply colorscheme
    vim.cmd("colorscheme PaperColor")
  end
}
