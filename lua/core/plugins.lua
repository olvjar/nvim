return {
    {
  --[[ COLORSCHEME ]]
       {
        'navarasu/onedark.nvim',
        lazy = false, -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
       },


  --[[ PLUGINS ]]
 
  	-- Detect tabstop and shiftwidth automatically
 	{ 'tpope/vim-sleuth', opts = {} },

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
