-- lua/plugins/telescope.lua

return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
        'nvim-lua/plenary.nvim',
        -- Add fuzzy finder
        {'nvim-telescope/telescope-fzf-native.nvim', build = 'make'},
	'nvim-telescope/telescope-ui-select.nvim',
    },
    config = function()
        require("config.telescope")
    end
}
