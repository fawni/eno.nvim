local M = {}

M.setup = function(opts)
    if vim.g.loaded_eno then return end
    vim.g.loaded_eno = 1

    if opts.treesitter ~= false and pcall(require, "nvim-treesitter") then
        require("nvim-treesitter.parsers").get_parser_configs().eno = {
            install_info = {
                -- url = opts.treesitter_path or "/home/fawn/git/tree-sitter-eno",
                url = opts.treesitter_path or "https://codeberg.org/fawn/tree-sitter-eno",
                files = { "src/parser.c", "src/scanner.cc" },
            },
        }
    end
end

return M
