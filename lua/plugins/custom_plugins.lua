return {
  -- Git & Version Control
  { "tpope/vim-fugitive" },
  { 
    "lewis6991/gitsigns.nvim", 
    opts = {}, 
    config = function(_, opts) require("gitsigns").setup(opts) end
  },
  { 
    "kdheepak/lazygit.nvim", 
    keys = { { "<leader>gg", ":LazyGit<CR>", desc = "Open LazyGit" } } 
  },
  { "ruifm/gitlinker.nvim", opts = {}, config = function() require("gitlinker").setup() end },

  -- LSP & Completion
  { "neovim/nvim-lspconfig" },
  { 
    "hrsh7th/nvim-cmp", 
    dependencies = { "hrsh7th/cmp-nvim-lsp", "L3MON4D3/LuaSnip" },
    opts = {}
  },
  { "L3MON4D3/LuaSnip" },
  { "jose-elias-alvarez/null-ls.nvim", opts = {} },

  -- Navigation & Search
  { 
    "nvim-telescope/telescope.nvim", 
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = { { "<leader>ff", ":Telescope find_files<CR>", desc = "Find Files" },
             { "<leader>fg", ":Telescope live_grep<CR>", desc = "Live Grep" } },
    opts = {} 
  },
  { "nvim-tree/nvim-tree.lua", 
    keys = { { "<leader>e", ":NvimTreeToggle<CR>", desc = "Toggle File Explorer" } },
    opts = { view = { width = 30, side = "left" } } 
  },
  { 
    "phaazon/hop.nvim", 
    branch = "v2",
    keys = { { "s", ":HopChar2<CR>", desc = "Hop to char" } },
    opts = {} 
  },
  { "ggandor/leap.nvim", keys = { { "gs", "<Plug>(leap-forward-to)", desc = "Leap Forward" } }, opts = {} },

  -- Productivity & Editing
  { 
    "windwp/nvim-autopairs", 
    opts = {}, 
    config = function(_, opts) require("nvim-autopairs").setup(opts) end 
  },
  { 
    "numToStr/Comment.nvim", 
    keys = { { "gc", mode = "n", desc = "Toggle Comment" }, { "gc", mode = "v", desc = "Toggle Comment" } },
    opts = {}, 
    config = function(_, opts) require("Comment").setup(opts) end 
  },
  { "kylechui/nvim-surround", version = "*", opts = {}, config = function(_, opts) require("nvim-surround").setup(opts) end },
  { 
    "ThePrimeagen/harpoon",
    keys = { 
      { "<leader>ha", ":lua require('harpoon.mark').add_file()<CR>", desc = "Add Harpoon File" },
      { "<leader>hm", ":lua require('harpoon.ui').toggle_quick_menu()<CR>", desc = "Harpoon Menu" }
    },
    opts = {} 
  },

  -- Appearance & UI
  { "nvim-lualine/lualine.nvim", opts = { options = { theme = "tokyonight" } } },
  { "kyazdani42/nvim-web-devicons" },
  { "glepnir/dashboard-nvim", opts = {} },
  { "folke/tokyonight.nvim", lazy = false },
  { "catppuccin/nvim", name = "catppuccin", lazy = false },

}
