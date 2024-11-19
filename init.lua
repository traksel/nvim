-- Global tab's size
vim.cmd("set shiftwidth=4")
vim.cmd("set softtabstop=4")
vim.cmd("set tabstop=4")
vim.cmd("set expandtab")

-- Local files
vim.cmd("autocmd FileType xml setlocal shiftwidth=2 softtabstop=2 expandtab")
vim.cmd("autocmd FileType yaml setlocal shiftwidth=2 softtabstop=2 expandtab")

-- Leader
vim.g.mapleader= " "

-- Lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local opts = {}

require("lazy").setup("plugins")

