return {
  {
    "ThePrimeagen/harpoon",
    lazy = true,
    event = "BufRead",
    dependencies = {
      { "nvim-lua/plenary.nvim" },
    },
    keys = {
      {
        "<leader>fm",
        "<cmd>Telescope harpoon marks<cr>",
        desc = "Telescope Harpoon Marks",
      },
    },
    opts = {
      global_settings = {
        save_on_toggle = true,
        enter_on_sendcmd = true,
      },
    },
    config = function(_, optionsj)
      local status_ok, harpoon = pcall(require, "harpoon")
      if not status_ok then
        return
      end

      harpoon.setup(options)

      local tele_status_ok, telescope = pcall(require, "telescope")
      if not tele_status_ok then
        return
      end

      telescope.load_extension("harpoon")
    end,
  },
}
