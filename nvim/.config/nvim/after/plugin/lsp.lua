local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  local opts = { buffer = bufnr, remap = false }

  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "gh", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "gs", function() vim.lsp.buf.workspace_symbol() end, opts)
  vim.keymap.set("n", "go", function() vim.diagnostic.open_float() end, opts)
  vim.keymap.set("n", "gj", function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "gk", function() vim.diagnostic.goto_prev() end, opts)
  vim.keymap.set("n", "ga", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "<leader>gr", function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "gn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = { 'tsserver', 'rust_analyzer', 'jdtls', 'gradle_ls', 'lua_ls', 'cssls', 'sqlls' },
  automatic_installation = true,
  handlers = {
    lsp_zero.default_setup,
    lua_ls = function()
      local lua_opts = lsp_zero.nvim_lua_ls()
      require('lspconfig').lua_ls.setup(lua_opts)
    end,

    jdtls = function()
      local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
      local current_working_directory = vim.fn.getcwd()
      local parent_directory = vim.fn.fnamemodify(current_working_directory, ":h")
      local last_parent_directory = vim.fn.fnamemodify(parent_directory, ":t")
      local workspace_dir = '/home/tono/.cache/jdtls/workspace/' .. last_parent_directory .. '/'
      local jdtls_path = '/home/tono/.local/share/nvim/mason/packages/jdtls'
      -- Check if the project is a Java project
      local is_java_project = false

      local files_to_check = { "gradlew", "pom.xml", "build.gradle" }

      for _, file in ipairs(files_to_check) do
        if vim.fn.filereadable(current_working_directory .. '/' .. file) == 1 then
          is_java_project = true
          break
        end
      end

      if is_java_project then
        os.execute("mkdir " .. workspace_dir)
        os.execute("mkdir " .. workspace_dir .. project_name)
      end

      local path_to_lsp_server = '/home/tono/.cache/jdtls/config'
      local path_to_jar = "/plugins/org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar"
      local lombok_path = jdtls_path .. '/lombok.jar'
      local jdtls_opts = {
        cmd = {
          '/home/tono/.local/share/nvim/mason/bin/jdtls',
          '-Declipse.application=org.eclipse.jdt.ls.core.id1',
          '-Dosgi.bundles.defaultStartLevel=4',
          '-Declipse.product=org.eclipse.jdt.ls.core.product',
          '-Dlog.protocol=true',
          '-Dlog.level=ALL',
          '--jvm-arg=-javaagent:' .. lombok_path,
          '-Xms1g',
          '--add-modules=ALL-SYSTEM',
          '--add-opens', 'java.base/java.util=ALL-UNNAMED',
          '--add-opens', 'java.base/java.lang=ALL-UNNAMED',

          '-jar', path_to_jar,
          '-configuration', path_to_lsp_server,
          '-data', workspace_dir .. project_name,
        },

        --root_dir = root_dir,
        root_dir = require('lspconfig/util').root_pattern(".git", "mvnw", "gradlew", "pom.xml", "build.gradle"),
        -- Here you can configure eclipse.jdt.ls specific settings
        -- See https://github.com/eclipse/eclipse.jdt.ls/wiki/Running-the-JAVA-LS-server-from-the-command-line#initialize-request
        -- for a list of options
        settings = {
          java = {
            home = vim.fn.expand('/home/tono/.local/share/nvim/mason/'),
            eclipse = {
              downloadSources = true,
            },
            maven = {
              downloadSources = true,
            },
            implementationsCodeLens = {
              enabled = true,
            },
            referencesCodeLens = {
              enabled = true,
            },
            references = {
              includeDecompiledSources = true,
            },
            format = {
              enabled = true,
              settings = {
                url = vim.fn.stdpath "config" .. "/lang-servers/intellij-java-google-style.xml",
                profile = "GoogleStyle",
              },
            },

          },
          signatureHelp = { enabled = true },
          completion = {
            favoriteStaticMembers = {
              "org.hamcrest.MatcherAssert.assertThat",
              "org.hamcrest.Matchers.*",
              "org.hamcrest.CoreMatchers.*",
              "org.junit.jupiter.api.Assertions.*",
              "java.util.Objects.requireNonNull",
              "java.util.Objects.requireNonNullElse",
              "org.mockito.Mockito.*",
            },
            importOrder = {
              "java",
              "javax",
              "com",
              "org"
            },
          },
          extendedClientCapabilities = extendedClientCapabilities,
          sources = {
            organizeImports = {
              starThreshold = 9999,
              staticStarThreshold = 9999,
            },
          },
          codeGeneration = {
            toString = {
              template = "${object.className}{${member.name()}=${member.value}, ${otherMembers}}",
            },
            useBlocks = true,
          },
        },

        flags = {
          allow_incremental_sync = true,
        },
        init_options = {
          bundles = {},
        },
        filetypes = { 'java' },
      }
      require('lspconfig').jdtls.setup(jdtls_opts)
    end,
  }
})

local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }

--lspconfig.cssls.setup({
--cmd = { 'vscode-html-language-server', 'vscode-css-language-server', 'vscode-eslint-language-server', 'vscode-json-language-server' },
--settings = {
--scss = {
--lint = {
--idSelector = "warning",
--},
--},
--},
--})

cmp.setup({
  sources = {
    { name = 'path' },
    { name = 'nvim_lsp' },
    { name = 'nvim_lua' },
  },
  formatting = lsp_zero.cmp_format(),
  mapping = cmp.mapping.preset.insert({
    ['<C-k>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-j>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-l>'] = cmp.mapping.confirm({ select = true }),
    ['<C-Space>'] = cmp.mapping.complete(),
  }),
})
