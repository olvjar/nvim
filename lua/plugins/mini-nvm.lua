-- Add indentation guides even on blank lines
-- https://github.com/echasnovski/mini.nvim

return {
  'echasnovski/mini.nvim',
  config = function()
    -- Starter screen/dashboard
    local starter = require 'mini.starter'
    starter.setup {
      autoopen = true,

      items = {
        starter.sections.builtin_actions(),
        starter.sections.recent_files(5, true),
      },

      header = table.concat({
        [[                              ]],
        [[            ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒          ]],
        [[         ▒▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒░       ]],
        [[       ▒▒▓▓                 ▓▓▓▓      ]],
        [[      ▒▓▓                      ▓▓▓    ]],
        [[     ▒▓    ▒▒▓▓▓▓▓▓▓▓▓▓▓▓▒       ▓▓   ]],
        [[   ▒▒▓   ▒▒▓▓           ▒▓▓▓     ▓▓   ]],
        [[  ▒▒▓  ▒▒▓     ▒▓▓▓▓▓▒    ▒▓▓    ▓▓▓  ]],
        [[  ▒▓  ▒▓▓   ▒▓▓       ▓▓   ▒▓▓   ▓▓▓  ]],
        [[  ▒▓  ▒▓   ▒▓   ▒▓▓▓▒  ▓▓▓  ▓▓    ▓▓  ]],
        [[  ▒▓  ▒▓  ▒▓   ▒▓   ▓▒   ▓▓ ▒█▓   ▓▓  ]],
        [[  ▒▓  ▒▓  ▒▓  ▒▓     ▓▒  █▓  █▓   ▓▓  ]],
        [[  ▒▓  ▒▓   ▒▓   ▓▓▓ ▒▓▓  █▓  █▓       ]],
        [[  ▒▓  ▒▓▓   ▒▓▓    ▒▓▓   █▓  █▓       ]],
        [[  ▒▓▓  ▒▓▓▓   ▒▓▓▓▓▓     █▓ █▓        ]],
        [[   ▒▓    █▓▓          █▓▓   █▓        ]],
        [[   ▒▓▓▓   ▒█▓▓▓▓▓▓▓▓▓▓     █▓         ]],
        [[     ▒▓▓▓               ██▓▓          ]],
        [[       ▒▓▓▓▓▓         █▓▓             ]],
        [[          ▓▓▓▓▓▓▓▓▓▓▓▓▓▓              ]],
        [[                              ]],
      }, '\n'),

      footer = nil,

      content_hooks = {
        starter.gen_hook.adding_bullet(),
        starter.gen_hook.aligning('center', 'center'),
      },

      query_updaters = 'abcdefghijklmnopqrstuvwxyz0123456789_-.',
    }

    -- Better Around/Inside textobjects
    --
    -- Examples:
    --  - va)  - [V]isually select [A]round [)]paren
    --  - yinq - [Y]ank [I]nside [N]ext [']quote
    --  - ci'  - [C]hange [I]nside [']quote
    require('mini.ai').setup { n_lines = 500 }

    -- Add/delete/replace surroundings (brackets, quotes, etc.)
    --
    -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
    -- - sd'   - [S]urround [D]elete [']quotes
    -- - sr)'  - [S]urround [R]eplace [)] [']
    require('mini.surround').setup()

    -- Simple and easy statusline.
    local statusline = require 'mini.statusline'
    -- set use_icons to true if you have a Nerd Font
    statusline.setup { use_icons = vim.g.have_nerd_font }

    -- You can configure sections in the statusline by overriding their
    statusline.section_location = function()
      return '%2l:%-2v'
    end
  end,
}
