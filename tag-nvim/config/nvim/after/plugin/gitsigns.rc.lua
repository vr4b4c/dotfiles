local gitsigns = require('gitsigns')

gitsigns.setup({
  on_attach = function(bufnr)
    local gs = package.loaded.gitsigns

    local function map(mode, l, r, opts)
      opts = opts or {}
      opts.buffer = bufnr
      vim.keymap.set(mode, l, r, opts)
    end

    -- Navigation
    map('n', ']c', function()
      if vim.wo.diff then return ']c' end
      vim.schedule(function() gs.next_hunk() end)
      return '<Ignore>'
    end, {expr=true})

    map('n', '[c', function()
      if vim.wo.diff then return '[c' end
      vim.schedule(function() gs.prev_hunk() end)
      return '<Ignore>'
    end, {expr=true})

    -- Actions
    -- KeyMap: <leader>gs Gitsigns stage hunk
    map({'n', 'v'}, '<leader>gs', ':Gitsigns stage_hunk<CR>')

    -- KeyMap: <leader>gr Gitsigns reset hunk
    map({'n', 'v'}, '<leader>gr', ':Gitsigns reset_hunk<CR>')

    -- KeyMap: <leader>gS Gitsigns stage buffer
    map('n', '<leader>gS', gs.stage_buffer)

    -- KeyMap: <leader>gu Gitsigns undo stage hunk
    map('n', '<leader>gu', gs.undo_stage_hunk)

    -- KeyMap: <leader>gR Gitsigns reset buffer
    map('n', '<leader>gR', gs.reset_buffer)

    -- KeyMap: <leader>gp Gitsigns preview hunk
    map('n', '<leader>gp', gs.preview_hunk)

    -- KeyMap: <leader>gb Gitsigns blame line
    map('n', '<leader>gb', function() gs.blame_line{full=true} end)

    -- KeyMap: <leader>gtb Gitsigns toogle blame line
    map('n', '<leader>tb', gs.toggle_current_line_blame)

    -- KeyMap: <leader>gd Gitsigns diff this
    map('n', '<leader>hd', gs.diffthis)

    -- KeyMap: <leader>gD Gitsigns diff this(~)
    map('n', '<leader>hD', function() gs.diffthis('~') end)

    -- KeyMap: <leader>gtd Gitsigns toggle deleted
    map('n', '<leader>td', gs.toggle_deleted)

    -- Text object
    map({'o', 'x'}, 'ih', ':<C-U>Gitsigns select_hunk<CR>')
  end
});
