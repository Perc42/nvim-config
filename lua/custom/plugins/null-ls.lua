return {
  'jose-elias-alvarez/null-ls.nvim',
  dependencies = { 'mason.nvim' },
  opts = function()
    local nls = require 'null-ls'
    return {
      sources = {
        nls.builtins.formatting.clang_format,
        nls.builtins.formatting.stylua,
        nls.builtins.formatting.black,
        nls.builtins.formatting.shfmt,
        nls.builtins.formatting.sql_formatter,
        nls.builtins.formatting.prettierd,
      },
      on_attach = function(current_client, bufnr)
        if current_client.supports_method 'textDocument/formatting' then
          vim.api.nvim_create_autocmd('BufWritePre', {
            buffer = bufnr,
            callback = function()
              vim.lsp.buf.format {
                filter = function(client)
                  return client.name == 'null-ls'
                end,
                bufnr = bufnr,
              }
            end,
          })
        end
      end,
    }
  end,
}
