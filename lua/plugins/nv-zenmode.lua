return {
  {
    "folke/zen-mode.nvim",
    cmd = { "ZenMode" },
    opts = {
      window = {
        backdrop = 0.95,
        width = 100,
        height = 0.8,
        options = { signcolumn = "no", number = false, cursorline = false },
      },
      plugins = {
        options = { enabled = true, ruler = false, showcmd = false },
        twilight = { enabled = true },
        gitsigns = { enabled = true },
        tmux = { enabled = true },
        alacritty = {
          enabled = false,
          font = "16", -- font size
        },
      },
    },
    config = true,
    keys = {
      -- add <leader>cz to enter zen mode
      {
        "<leader>cz",
        "<cmd>ZenMode<cr>",
        desc = "Zen Mode",
      },
    },
  },
}
