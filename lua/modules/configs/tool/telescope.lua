return function()
    local actions = require("telescope.actions")

    require("telescope").setup({
        defaults = {
            vimgrep_arguments = {
                "rg", "-L", "--color=never", "--no-heading", "--with-filename",
                "--line-number", "--column", "--smart-case"
            },
            prompt_prefix = "   ",
            selection_caret = "  ",
            entry_prefix = "  ",
            initial_mode = "insert",
            selection_strategy = "reset",
            sorting_strategy = "ascending",
            layout_strategy = "horizontal",
            layout_config = {
                horizontal = {
                    prompt_position = "top",
                    preview_width = 0.55,
                    results_width = 0.8
                },
                vertical = {mirror = false},
                width = 0.87,
                height = 0.80,
                preview_cutoff = 120
            },
            file_sorter = require("telescope.sorters").get_fuzzy_file,
            file_ignore_patterns = {"node_modules"},
            generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
            path_display = {"truncate"},
            winblend = 0,
            border = {},
            borderchars = {
                "─", "│", "─", "│", "╭", "╮", "╯", "╰"
            },
            color_devicons = true,
            set_env = {["COLORTERM"] = "truecolor"}, -- default = nil,
            file_previewer = require("telescope.previewers").vim_buffer_cat.new,
            grep_previewer = require("telescope.previewers").vim_buffer_vimgrep
                .new,
            qflist_previewer = require("telescope.previewers").vim_buffer_qflist
                .new,
            -- Developer configurations: Not meant for general override
            buffer_previewer_maker = require("telescope.previewers").buffer_previewer_maker,
            mappings = {
                n = {["q"] = require("telescope.actions").close},
                i = {
                    ["<C-j>"] = actions.move_selection_next,
                    ["<C-k>"] = actions.move_selection_previous
                }
            }
        },

        extensions_list = {"themes", "terms"}
    })

    require("telescope").load_extension("frecency")
    require("telescope").load_extension("fzf")
    require("telescope").load_extension("live_grep_args")
    require("telescope").load_extension("notify")
    require("telescope").load_extension("projects")
    require("telescope").load_extension("undo")
    require("telescope").load_extension("zoxide")
end
