return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<leader>ff", ":Telescope find_files cwd=~/notes<CR>", { desc = "Find Notes" })
    vim.keymap.set("n", "<leader>fg", ":Telescope live_grep cwd=~/notes<CR>", { desc = "Search Notes" })
  end,
}
