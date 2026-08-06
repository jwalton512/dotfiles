return {
  "neovim/nvim-lspconfig",
  -- other settings removed for brevity
  opts = {
    ---@type table<string, vim.lsp.Config>
    servers = {

      eslint = {
        settings = {
          -- helps eslint find the eslintrc when it's placed in a subfolder instead of the cwd root
          workingDirectories = { mode = "auto" },
          format = auto_format,
        },
      },

      vtsls = {
        filetypes = {
          "javascript",
          "javascriptreact",
          "javascript.jsx",
          "typescript",
          "typescriptreact",
          "typescript.tsx",
        },
        settings = {
          complete_function_calls = true,
          vtsls = {
            enableMoveToFileCodeAction = true,
            autoUseWorkspaceTsdk = true,
            experimental = {
              maxInlayHintLength = 100,
              completion = {
                enableServerSideFuzzyMatch = true,
              },
            },
          },
          typescript = {
            updateImportsOnFileMove = { enabled = "always" },
            suggest = {
              completeFunctionCalls = true,
            },
            inlayHints = {
              enumMemberValues = { enabled = true },
              functionLikeReturnTypes = { enabled = true },
              parameterNames = { enabled = "literals" },
              parameterTypes = { enabled = true },
              propertyDeclarationTypes = { enabled = true },
              variableTypes = { enabled = false },
            },
          },
        },
      },

      emmet_language_server = {
        cmd = { "emmet-language-server", "--stdio" },
        filetypes = {
          "html",
          "css",
          "scss",
          "sass",
          "less",
          "javascriptreact",
          "typescriptreact",
          "vue",
          "svelte",
          "astro",
        },
        init_options = {
          showAbbreviationSuggestions = true,
          showExpandedAbbreviation = "always",
          showSuggestionsAsSnippets = false,
          variables = {},
          preferences = {},
        },
      },
    },

    setup = {
      eslint = function()
        if not auto_format then
          return
        end

        local formatter = LazyVim.lsp.formatter({
          name = "eslint: lsp",
          primary = false,
          priority = 200,
          filter = "eslint",
        })

        -- register the formatter with LazyVim
        LazyVim.format.register(formatter)
      end,
    },
  },
}

-- local get_root_dir = function(fname)
--   local util = require("lspconfig.util")
--   return util.root_pattern(".eslintrc.js", ".eslintrc.cjs", "eslint.config.js")(fname)
-- end
--
-- return {
--   "neovim/nvim-lspconfig",
--   opts = {
--     servers = {
--       eslint = {
--         root_dir = get_root_dir,
--         -- settings = {
--         --   workingDirectory = { mode = "auto" },
--         --   nodePath = ".",
--         -- },
--       },
--
--       vtsls = {
--         settings = {
--           vtsls = {
--             experimental = {
--               maxInlayHintLength = 50,
--             },
--           },
--         },
--       },
--
--       emmet_language_server = {
--         cmd = { "emmet-language-server", "--stdio" },
--         filetypes = {
--           "html",
--           "css",
--           "scss",
--           "sass",
--           "less",
--           "javascriptreact",
--           "typescriptreact",
--           "vue",
--           "svelte",
--           "astro",
--         },
--         init_options = {
--           showAbbreviationSuggestions = true,
--           showExpandedAbbreviation = "always",
--           showSuggestionsAsSnippets = false,
--           variables = {},
--           preferences = {},
--         },
--       },
--     },
--
--     setup = {
--       eslint = function()
--         -- Fix all eslint (includes prettier/prettier) on save
--         vim.api.nvim_create_autocmd("BufWritePre", {
--           callback = function(args)
--             local ft = vim.bo[args.buf].filetype
--             if
--               ft ~= "javascript"
--               and ft ~= "javascriptreact"
--               and ft ~= "typescript"
--               and ft ~= "typescriptreact"
--               and ft ~= "vue"
--               and ft ~= "svelte"
--               and ft ~= "astro"
--             then
--               return
--             end
--
--             -- Apply only ESLint fixes (does not run other formatters)
--             vim.lsp.buf.code_action({
--               context = { only = { "source.fixAll.eslint" } },
--               apply = true,
--             })
--           end,
--         })
--
--         return false -- let lspconfig continue normal setup
--       end,
--     },
--   },
-- }

-- ORIGINAL
-- return {
--   "neovim/nvim-lspconfig",
--   opts = {
--     servers = {
--       eslint = {},
--       vtsls = {
--         settings = {
--           vtsls = {
--             experimental = {
--               maxInlayHintLength = 50,
--             },
--           },
--         },
--       },
--
--       emmet_language_server = {
--         cmd = { "emmet-language-server", "--stdio" },
--
--         -- Tweak to your taste
--         filetypes = {
--           "html",
--           "css",
--           "scss",
--           "sass",
--           "less",
--           "javascriptreact",
--           "typescriptreact",
--           "vue",
--           "svelte",
--           "astro",
--         },
--
--         init_options = {
--           showAbbreviationSuggestions = true,
--           showExpandedAbbreviation = "always",
--           showSuggestionsAsSnippets = false,
--           variables = {},
--           preferences = {},
--         },
--       },
--     },
--     setup = {
--       eslint = function()
--         require("lazyvim.util").lsp.on_attach(function(client)
--           if client.name == "eslint" then
--             client.server_capabilities.documentFormattingProvider = true
--           elseif client.name == "tsserver" then
--             client.server_capabilities.documentFormattingProvider = false
--           end
--         end)
--       end,
--     },
--   },
-- }
