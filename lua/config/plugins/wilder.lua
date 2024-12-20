return {
    "gelguy/wilder.nvim",
    lazy = false,
    config = function()
        local wilder = require("wilder")
        wilder.setup({
            modes = { ":",";","?"}
        })
        -- Optionally configure renderer and pipeline here
        wilder.set_option("renderer", wilder.popupmenu_renderer({
            highlighter = wilder.basic_highlighter(),
        }))
    end,
}
