local M = {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufRead", "BufNewFile" },
	build = function()
		require("nvim-treesitter.install").update({ with_sync = true })()
	end,
}

function M.config()
	local config = require("nvim-treesitter.configs")

	config.setup({
		ensure_installed = {
			"html",
			"css",
			"javascript",
			"typescript",
			"tsx",
		},

		auto_install = false,
		ignore_install = { "" },
		sync_install = false,

		highlight = { enable = true },
		incremental_selection = { enable = true },
		--indent = { enable = true, disable = {} },
	})
end

return M
