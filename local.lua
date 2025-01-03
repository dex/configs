return {
  {
    "dhananjaylatkar/cscope_maps.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim", -- optional [for picker="telescope"]
      "ibhagwan/fzf-lua", -- optional [for picker="fzf-lua"]
      "echasnovski/mini.pick", -- optional [for picker="mini-pick"]
    },
    opts = {
      -- USE EMPTY FOR DEFAULT OPTIONS
      -- DEFAULTS ARE LISTED BELOW
      prefix = "<localleader><localleader>",
      cscope = {
        db_build_cmd_args = { "-bqkvRU" },
      },
      skip_input_prompt = true, -- "true" doesn't ask for input
    },
  },
  {
    "ludovicchabant/vim-gutentags",
    init = function()
      vim.g.gutentags_modules = { "cscope_maps" } -- This is required. Other config is optional
      vim.g.gutentags_cscope_build_inverted_index_maps = 1
      vim.g.gutentags_cache_dir = vim.fn.expand("~/.cache/gutentags")
      vim.g.gutentags_file_list_command = "fd -e c -e h"
      -- vim.g.gutentags_trace = 1
    end,
  },
  {
    "smoka7/hop.nvim",
    version = "*",
    keys = {
      { "<localleader><localleader>w", "<cmd>HopWordAC<cr>", desc = "Jump to Word after cursor" },
      { "<localleader><localleader>W", "<cmd>HopWordBC<cr>", desc = "Jump to Word before cursor" },
    },
    opts = {
      keys = "etovxqpdygfblzhckisuran",
    },
  },
}
