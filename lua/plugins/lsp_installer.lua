local lsp_installer = require "nvim-lsp-installer"

function common_on_attach(client, bufnr)
  -- add your code here
end

lsp_installer.on_server_ready(function (server)
    local opts = {
        on_attach = common_on_attach,
    }

    if server.name == "eslint" then
        opts.on_attach = function (client, bufnr)
            -- neovim's LSP client does not currently support dynamic capabilities registration, so we need to set
            -- the resolved capabilities of the eslint server ourselves!
            client.resolved_capabilities.document_formatting = true
            common_on_attach(client, bufnr)
        end
        opts.settings = {
            format = { enable = true }, -- this will enable formatting
        }
    end

    server:setup(opts)
end)
