return {
  -- add onedark
  {

    -- "ful1e5/onedark.nvim",
    -- "olimorris/onedarkpro.nvim",
    "navarasu/onedark.nvim",
  },

  -- Configure LazyVim to load onedark
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark",
    },
  },
}

-- -- Lazy
-- {
--   priority = 1000, -- Ensure it loads first
-- }
