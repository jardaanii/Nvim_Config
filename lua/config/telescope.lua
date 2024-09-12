-- lua/config/telescope.lua

local telescope = require("telescope")
local builtin = require("telescope.builtin")


-- Configure Telescope
telescope.setup({
    defaults = {
        -- Default configuration for telescope goes here
        -- config_key = value,
	    },
    pickers = {
        -- Default configuration for builtin pickers goes here
        -- picker_name = {
        --   picker_config_key = value,
        --   ...
        -- }
    },
    extensions = {
        -- Your extension configuration goes here
        -- extension_name = {
        --   extension_config_key = value,
        -- }
        fzf = {
            fuzzy = true,                    -- false will only do exact matching
            override_generic_sorter = true,  -- override the generic sorter
            override_file_sorter = true,     -- override the file sorter
            case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                             -- the default case_mode is "smart_case"
        },
	["ui-select"]={
                 require("telescope.themes").get_dropdown{}

		}
    }
})

-- Load Telescope extensions
telescope.load_extension('fzf')
telescope.load_extension("ui-select")


-- Keymaps
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- You can add more keymaps for different Telescope functionalities here
