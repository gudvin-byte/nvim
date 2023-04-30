local status, packer = pcall(require, "packer")
if not status then
  print("Packer is not installed")
  return
end

-- Reloads Neovim after whenever you save plugins.lua
vim.cmd([[
augroup packer_user_config
autocmd!
autocmd BufWritePost plugins.lua source <afile> | PackerSync
augroup END
]])

packer.startup(function(use)
  -- Packer can manage itself
  use("wbthomason/packer.nvim")

  -- Dashboard is a nice start screen for nvim
  use("glepnir/dashboard-nvim")
  use("mbbill/undotree")
  use 'feline-nvim/feline.nvim'

  -- Telescope
  use({
    "nvim-telescope/telescope.nvim",
    tag = "0.1.1",
    requires = { { "nvim-lua/plenary.nvim" } },
  })
  use("nvim-telescope/telescope-file-browser.nvim")

  use("nvim-treesitter/nvim-treesitter") -- Treesitter Syntax Highlighting

  -- Productivity
  use("vimwiki/vimwiki")


  -- Tim Pope Plugins --
  use("tpope/vim-surround")
  use("m4xshen/autoclose.nvim")


  -- Colorschemes --
  use("RRethy/nvim-base16")
  use("kyazdani42/nvim-palenight.lua")

  -- install without yarn or npm
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })

  use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

  if packer_bootstrap then
    packer.sync()
  end
end)
