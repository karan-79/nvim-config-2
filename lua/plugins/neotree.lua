return {


  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    vim.keymap.set('n', '<leader>e', ":Neotree filesystem reveal left<CR>", {})
    require("neo-tree").setup({
      default_component_configs = {
        icon = {
          folder_closed = "", -- Icon for closed folders
          folder_open = "",   -- Icon for open folders
          folder_empty = "",  -- Icon for empty folders
          default = "",       -- Default file icon
        },
      },
    })

  end
}

