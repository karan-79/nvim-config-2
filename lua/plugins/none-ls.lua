return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier,
      },
    })

    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
    local group = vim.api.nvim_create_augroup("LspFormatting", {})

    -- Set up the autocommand
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = group,
      pattern = "*", -- You can specify file types here, e.g., "*.lua"
      callback = function()
        vim.lsp.buf.format({
          async = false,
        })
      end,
    })
  end,
}
