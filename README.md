# eno.nvim

A Neovim plugin for editing [Eno](https://eno-lang.org/) files.

## Installation

Using [lazy.nvim](https://github.com/folke/lazy.nvim):

``` lua
{
    url = "git@codeberg.org:fawn/eno.nvim.git",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    event = "BufReadPre *.eno",
    opts = {},
}
```

## License

[Apache 2.0](LICENSE)
