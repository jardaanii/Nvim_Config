return{
        'xiyaowong/nvim-transparent',
        config = function()
            local transparent = require("transparent")
            transparent.setup({
                enable = true,  -- Start with transparency enabled
                extra_groups = {
                    -- Add any additional highlight groups here
                    "Normal", "NormalNC", "TelescopeNormal", "TelescopeBorder",
                },
                exclude = {}, -- Groups to exclude from transparency
            })

            -- Define a toggle function
            vim.api.nvim_set_keymap('n', '<leader>tt', ':lua require("transparent").toggle()<CR>', { noremap = true, silent = true })
        end
    }
