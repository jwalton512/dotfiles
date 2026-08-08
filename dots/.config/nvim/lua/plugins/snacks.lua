return {
  {
    "folke/snacks.nvim",
    opts = {
      lazygit = {
        win = {
          width = 0,
          height = 0,
          border = "none",
          backdrop = false,
        },
      },
      explorer = {
        trash = false,
      },
      picker = {
        hidden = true,
        sources = {
          files = {
            hidden = true,
          },
          explorer = {
            jump = {
              close = true,
            },
          },
        },
      },
    },
  },
}
