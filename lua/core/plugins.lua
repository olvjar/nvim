return {
    {
        'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically

        -- nerd font web icons
        { 'nvim-tree/nvim-web-devicons', opts = {} },

        -- "gc" to comment visual regions/lines
        { 'numToStr/Comment.nvim', opts = {} },

        -- Highlight todo, notes, etc in comments
        { 'folke/todo-comments.nvim', event = 'VimEnter', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = false } },

        -- import custom plugins
        { import = 'plugins' },
    },
}