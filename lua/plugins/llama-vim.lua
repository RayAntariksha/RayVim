return {
	"ggml-org/llama.vim",
	init = function()
		vim.g.llama_config = {
			show_info = 0,
			endpoint_fim = "http://127.0.0.1:8012/infill",
			endpoint_inst = "http://127.0.0.1:8012/v1/chat/completions",

			model_fim = "/home/aray/llama.cpp/models/Qwen2.5-Coder-1.5B-Instruct-GGUF/qwen2.5-coder-1.5b-instruct-q4_k_m.gguf",
			model_inst = "/home/aray/llama.cpp/models/Qwen2.5-Coder-1.5B-Instruct-GGUF/qwen2.5-coder-1.5b-instruct-q4_k_m.gguf",

			auto_fim = true,
			enable_at_startup = true,
		}
	end,
}
