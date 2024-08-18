-- lua with lazy.nvim
return {
  "max397574/better-escape.nvim",
  opts = {
    mappings = {
      i = {
        j = {
          -- These can all also be functions
          k = "<Esc>",
          j = "<Esc>",
        },
      },
      c = {
        j = {
          k = "<Esc>",
          j = "<Esc>",
        },
      },
      t = {
        j = {
          k = "<Esc>",
          j = "<Esc>",
        },
      },
      v = {
        j = {
          k = "<Esc>",
        },
      },
      s = {
        j = {
          k = "<Esc>",
        },
      },
    },
    config = function(_, opts)
      require("better_escape").setup(opts)
    end,
  },
}
