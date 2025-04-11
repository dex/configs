return {
    {
        "yetone/avante.nvim",
        event = "VeryLazy",
        version = false, -- Never set this value to "*"! Never!
        opts = {
            provider = "claude",
            claude = {
                api_key_name = "cmd:cat /home/dex/.anthropic-api-key",
                model = "claude-3-5-haiku-20241022",
                max_tokens = 8192,
            },
            --provider = "ollama",
            ollama = {
                model = "qwen2.5-coder:7b",
                --model = "llama3",
            },
        },
        -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
        build = "make",
        -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
            "stevearc/dressing.nvim",
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
        },
    },
}
