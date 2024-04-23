-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

vim.opt.relativenumber = true
lvim.transparent_window = true
lvim.colorscheme = "tokyonight-night"
lvim.builtin.treesitter.rainbow.enable = true
lvim.builtin.lualine.options.section_separators = { left = '', right = '' }

lvim.plugins = {
  { "folke/tokyonight.nvim" },
  { "rose-pine/neovim" },
  { "rebelot/kanagawa.nvim" },
  {
    "Pocco81/auto-save.nvim",
    config = function()
      require("auto-save").setup()
    end,
  },
  {
    "zbirenbaum/copilot-cmp",
    event = "InsertEnter",
    dependencies = { "zbirenbaum/copilot.lua" },
    config = function()
      vim.defer_fn(function()
        require("copilot").setup()     -- https://github.com/zbirenbaum/copilot.lua/blob/master/README.md#setup-and-configuration
        require("copilot_cmp").setup() -- https://github.com/zbirenbaum/copilot-cmp/blob/master/README.md#configuration
      end, 100)
    end,
  },
  { "tpope/vim-surround" },
  {
    "folke/todo-comments.nvim",
    event = "BufRead",
    config = function()
      require("todo-comments").setup()
    end,
  },
  { "mrjones2014/nvim-ts-rainbow" },
  {
    "wfxr/minimap.vim",
    build = "cargo install --locked code-minimap",
    -- cmd = {"Minimap", "MinimapClose", "MinimapToggle", "MinimapRefresh", "MinimapUpdateHighlight"},
    config = function()
      vim.cmd("let g:minimap_width = 10")
      vim.cmd("let g:minimap_auto_start = 1")
      vim.cmd("let g:minimap_auto_start_win_enter = 1")
    end,
  },
  {
    "karb94/neoscroll.nvim",
    event = "WinScrolled",
    config = function()
      require("neoscroll").setup({
        -- All these keys will be mapped to their corresponding default scrolling animation
        mappings = { "<C-u>", "<C-d>", "<C-b>", "<C-f>", "<C-y>", "<C-e>", "zt", "zz", "zb" },
        hide_cursor = true,          -- Hide cursor while scrolling
        stop_eof = true,             -- Stop at <EOF> when scrolling downwards
        use_local_scrolloff = false, -- Use the local scope of scrolloff instead of the global scope
        respect_scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file
        cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
        easing_function = nil,       -- Default easing function
        pre_hook = nil,              -- Function to run before the scrolling animation starts
        post_hook = nil,             -- Function to run after the scrolling animation ends
      })
    end,
  },
}

if vim.g.neovide then
  lvim.transparent_window = false
  vim.o.guifont = "CaskaydiaCove Nerd Font:14"
  vim.g.transparency = 98 / 100
end
