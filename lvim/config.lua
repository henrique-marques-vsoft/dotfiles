-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
--
vim.opt.relativenumber = true -- set relative numbered lines
lvim.format_on_save = true
-- lvim.transparent_window = true
lvim.colorscheme = "gruvbox"
-- lvim.builtin.lualine.style = "default"

lvim.builtin.alpha.dashboard.section.header.val = {
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⡑⠢⢠⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡠⠄⡲⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣹⣦⡀⠈⠘⠢⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡠⠖⠋⠀⢀⣾⢏⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢳⢿⣷⣄⠀⠀⠀⠉⠒⠒⠈⠉⠉⠉⠉⠉⠉⠉⠑⠚⠁⠀⠀⢀⣴⣿⡿⢺⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣞⣿⣿⠦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠚⢿⣻⢣⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⠝⢁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠙⡅⠈⠉⠙⠒⠢⠄⡀⠀⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡰⠃⢠⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠡⠈⠄⠀⠀⠀⠀⠀⠈⠓⠤⡀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠤⠚⠡⠁⠀⠂⠀⠀⣠⣶⡶⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⣶⠦⡄⠀⠀⠃⠘⡀⠀⠀⠀⠀⠀⠀⠀⠈⠓⢄⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠴⠊⠁⠀⢀⠃⠀⢸⠀⠀⠀⣿⣿⣷⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣿⣾⡿⠀⠀⠠⡀⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠱⢄⠀]],
  [[⡶⡀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡠⠔⠋⠀⠀⠀⠀⠀⡌⠀⠀⢺⠀⠀⠀⠈⠛⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⠋⠀⠀⠀⡆⠀⠸⠀⠀⠀⠀⠀⠀⠀⠀⠂⠀⢀⠈⢇]],
  [[⠘⢌⡃⠦⠤⠤⠤⠤⠒⠊⠁⠀⠀⠀⠀⠀⢀⡀⢤⠀⠀⢀⣹⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⡁⠀⠀⡆⠀⠀⠀⠀⠀⠀⠀⠀⠂⠀⠌⡘]],
  [[⠀⠀⠉⠳⢴⡠⢄⠤⡠⠤⢠⠄⠤⡑⠢⢍⠢⠜⡆⠀⠀⢨⡘⠭⣂⡀⠀⠀⠀⠀⠀⠀⠀⠠⠀⠄⡠⠀⠀⠀⠀⠀⠀⠀⢀⡴⠁⡒⠀⠀⠰⠀⠀⠀⠀⠁⠈⠀⠌⠠⠈⡐⢸]],
  [[⠀⠀⠀⠀⠀⠈⠉⠒⠱⠭⢆⣙⣦⣉⡇⣎⣱⣊⠁⠀⠀⡰⡏⢆⡱⢌⡲⢄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡀⣤⠆⠉⠀⠀⢏⡄⠀⠈⢆⣠⣐⣠⣀⠄⠂⡀⠡⠐⣀⠇]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠏⣴⡟⠉⠱⡻⠀⠀⠀⣓⣯⠂⠁⠈⠁⠉⠈⠙⣷⢒⠲⡐⢆⠖⣢⠒⡌⢷⣶⣙⠎⠀⠀⠀⢠⣰⢆⠀⠀⡘⡛⠁⠉⢻⢱⠀⠄⡁⢢⠼⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠢⡑⢤⣀⡇⠀⠀⢸⣹⡟⢟⣷⡀⠀⠀⠀⢀⡏⠈⠱⠌⢌⢢⠁⠞⠈⠸⡸⠃⠀⠀⣰⣾⠏⠋⢎⡄⠂⠀⣡⢂⠬⣊⠎⡈⠐⣤⠋⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠓⣮⢙⠤⡄⢖⣟⣄⡠⠏⡿⠀⠀⠀⡸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⠰⡏⢅⡀⡄⣈⠶⡐⢣⣩⢼⠂⠡⠐⣤⠟⠃⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣃⠄⠘⢱⡛⠒⠒⠓⠋⠁⠀⠀⢀⡗⠀⠀⠀⠀⠀⠀⠠⠀⠀⠀⠰⡀⠁⠀⠈⠒⠒⠒⠒⠚⣜⣋⢼⣿⢧⡳⡽⠂⠀⠀⠀⠀⠀]],
}

lvim.plugins = {
  {
    'Exafunction/codeium.vim',
    config = function()
      vim.keymap.set('i', '<C-c>', function() return vim.fn['codeium#Accept']() end, { expr = true })
      vim.keymap.set('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true })
      vim.keymap.set('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true })
      vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true })
    end
  },

  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },

  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },

  { "lukas-reineke/indent-blankline.nvim" },
  ----- THEMES -----
  { "lunarvim/colorschemes" },
  { "arcticicestudio/nord-vim" },
  { "folke/tokyonight.nvim" },
  { "rose-pine/neovim" },
  { "paulfrische/reddish.nvim" },
  { "arcticicestudio/nord-vim" },
  { "tiagovla/tokyodark.nvim" },
  { "whatyouhide/vim-gotham" },
  { "rebelot/kanagawa.nvim" },
  { "sainnhe/gruvbox-material" },
  { "sainnhe/sonokai" },
  { "nonetallt/vim-neon-dark" },
  { "yassinebridi/vim-purpura" },
  { "pineapplegiant/spaceduck" },
  { "sainnhe/everforest" },
  { "olivercederborg/poimandres.nvim" },
  { "nyoom-engineering/nyoom.nvim" },
  { "rebelot/kanagawa.nvim" },

  {
    'catppuccin/nvim',
    priority = 1000,
    config = function()
      vim.cmd.colorscheme 'catppuccin-mocha'
      vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    end,
  },

  {
    'morhetz/gruvbox',
    priority = 1000,
    config = function()
      vim.cmd.colorscheme 'gruvbox'
      vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    end,
  },
}

-- PERSONAL CONFIG --
function EnableCodeium()
  vim.g.codeium_enabled = true
end

function DisabledCodeium()
  vim.g.codeium_enabled = false
end

vim.keymap.set('n', '<Leader>cd', function()
  EnableCodeium()
  vim.notify("Codeium " .. (vim.g.codeium_enabled and "enabled" or "disabled"))
end, { noremap = true, silent = true })
vim.keymap.set('n', '<Leader>ce', function()
  DisabledCodeium()
  vim.notify("Codeium " .. (vim.g.codeium_enabled and "enabled" or "disabled"))
end, { noremap = true, silent = true })

-- DIAGNOSTIC --
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })
