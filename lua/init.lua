local M = {}

M.setup = function()
    if vim.g.loaded_eno then return end
    vim.g.loaded_eno = 1

    if pcall(require, "nvim-treesitter") then
        require("nvim-treesitter.parsers").get_parser_configs().eno = {
            install_info = {
                url = "https://codeberg.org/fawn/tree-sitter-eno",
                files = { "src/parser.c", "src/scanner.cc" },
            },
        }
    end
end

return M
