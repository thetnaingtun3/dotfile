return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  opts = {
    ensure_installed = {
      -- Existing tools and language servers
      "gomodifytags",
      "impl",
      "gopls",
      "python",
      -- New tools and language servers
      "actionlint",
      "ansible-language-server",
      "ansible-lint",
      "antlers-language-server",
      "black",
      "bash-language-server",
      "blade-formatter",
      "docker-compose-language-service",
      "dockerfile-language-server",
      "dot-language-server",
      "emmet-ls",
      "eslint_d",
      "flake8",
      "hadolint",
      "html-lsp",
      "intelephense",
      "nginx-language-server",
      "php-debug-adapter",
      "phpstan",
      "pint",
      "prettierd",
      "pyright",
      "rustywind",
      "shellcheck",
      "shfmt",
      "stylua",
      "tailwindcss-language-server",
      "markdownlint-cli2",
      "markdown-toc",
    },
  },
  config = function()
    -- import mason
    local mason = require("mason")

    -- import mason-lspconfig
    local mason_lspconfig = require("mason-lspconfig")

    local mason_tool_installer = require("mason-tool-installer")

    -- enable mason and configure icons
    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    -- mason_lspconfig.setup({
    --   -- list of servers for mason to install
    --   ensure_installed = {
    --     "tsserver",
    --     "html",
    --     "cssls",
    --     -- "tailwindcss",
    --     "svelte",
    --     "vue",
    --     "go",
    --     "lua_ls",
    --     "graphql",
    --     "emmet_ls",
    --     "prismals",
    --     "pyright",
    --     "lua-language-server",
    --     "shellcheck",
    --     "shfmt",
    --     "php-debug-adapter",
    --     "intelephense",
    --   },
    -- })

    mason_tool_installer.setup({
      ensure_installed = {
        -- "prettier", -- prettier formatter
        -- "stylua",   -- lua formatter
        -- "isort",    -- python formatter
        "black", -- python formatter
        -- "pylint",
        -- "eslint_d",
      },
    })
  end,
}
