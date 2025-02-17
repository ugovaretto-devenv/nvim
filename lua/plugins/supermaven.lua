return {
    {
        "supermaven-inc/supermaven-nvim",
        version = "*", -- Use for stability; omit to use `main` branch for the latest features
        event = "VeryLazy",
        config = function()
                    require("supermaven-nvim").setup({
                        -- Configuration here, or leave empty to use defaults
                        keymaps = {
                            accept_suggestion = "<C-a>",
                            clear_suggestion = "<C-]>",
                            accept_word = "<C-j>",
                        },
                        ignore_filetypes = { cpp = true }, -- or { "cpp", }
                        color = {
                            suggestion_color = "#ffffff",
                            cterm = 244,
                        },
                        log_level = "info", -- set to "off" to disable logging completely
                        disable_inline_completion = false, -- disables inline completion for use with cmp
                        disable_keymaps = false, -- disables built in keymaps for more manual control
                        condition = function()
                            return false
                        end -- condition to check for stopping supermaven, `true` means to stop supermaven when the condition is true.
                    })
                end
    }
}
