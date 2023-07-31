local cmp = require'cmp'
local cmp_select_opts = {behavior = cmp.SelectBehavior.Select}

cmp.setup({
  mapping = {
    ['<C-Space>'] = cmp.mapping.complete(),

    ['<Up>'] = cmp.mapping.select_prev_item(cmp_select_opts),
    ['<Down>'] = cmp.mapping.select_next_item(cmp_select_opts),
    ['<Esc>'] = cmp.mapping(function(fallback)
        if cmp.visible() then
            cmp.abort()
        else
            fallback()
        end
    end),
    ['<Tab>'] = cmp.mapping(function(fallback)
        cmp.abort()
        
        if vim.b._copilot_suggestion ~= nil then
            vim.api.nvim_feedkeys(vim.fn["copilot#Accept"](), "i", true)
        end

        fallback()
    end),

    ['<CR>'] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    }),
  },
})
