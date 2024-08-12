return {
    {
      "rshkarin/mason-nvim-lint",
      dependencies = {
      "williamboman/mason.nvim",
      "mfussenegger/nvim-lint",
    },
    config = function()
      require("mason-nvim-lint").setup({
      ensure_installed = {'ast_grep'},
      })
  end
  },

  {
    "LittleEndianRoot/mason-conform",
    dependencies = {
      "stevearc/conform.nvim",
      "williambowman/mason.nvim"
    },
    config = function()
        require("mason-conform").setup({
          ensure_installed = {'black'},
        })
    end,
  }

}
