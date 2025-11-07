return {
    {
        "yetone/avante.nvim",
        opts = {
            provider = "claude-haiku",
            providers = {
                claude = {
                    api_key_name = "cmd:cat /home/dex/.anthropic-api-key",
                    model = "claude-3-5-haiku-20241022",
                    extra_request_body = {
                        max_tokens = 8192,
                    },
                },
                --provider = "ollama",
                ollama = {
                    model = "qwen2.5-coder:7b",
                    --model = "llama3",
                },
            },
        },
    },
}
