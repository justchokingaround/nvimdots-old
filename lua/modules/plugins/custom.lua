local custom = {}

custom["folke/todo-comments.nvim"] = {
    lazy = true,
    event = "BufRead",
    config = require("custom.todo-comments")
}

custom["nyoom-engineering/oxocarbon.nvim"] = {}
custom["Pocco81/true-zen.nvim"] = {
    lazy = true,
    event = "BufRead",
    config = require("custom.true-zen")
}
custom["lervag/vimtex"] = {}

return custom
