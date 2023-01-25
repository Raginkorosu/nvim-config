# Personal Neovim Configuration

- This build should work for either Linux or Windows.

The folder structure for neovim configuration
```
.
└── nvim
    ├── init.lua
    ├── lua
    │   └── core
    │       ├── alphanvim.lua
    │       ├── autopairs.lua
    │       ├── bufferline.lua
    │       ├── cmp.lua
    │       ├── colorscheme.lua
    │       ├── comments.lua
    │       ├── gitsigns.lua
    │       ├── glow.lua
    │       ├── impatient.lua
    │       ├── keymaps.lua
    │       ├── lsp
    │       │   ├── handlers.lua
    │       │   ├── init.lua
    │       │   ├── lsp-installer.lua
    │       │   └── settings
    │       │       └── sumneko_lua.lua
    │       ├── lualine.lua
    │       ├── notify.lua
    │       ├── nvimtree.lua
    │       ├── plugins.lua
    │       ├── project.lua
    │       ├── sets.lua
    │       ├── telescope.lua
    │       ├── toggleterm.lua
    │       └── treesitter.lua
    ├── plugin
    │   └── packer_compiled.lua
    └── spell
        ├── en.utf-8.add
        └── en.utf-8.add.spl

```

[init.lua](../nvim/.config/nvim/init.lua) the root that initalizes all the configuration files.
All the configurations are store in [nvim/lua/core](../nvim/.config/nvim/lua/core/)
## The following files and their configurations:
* sets.lua: Sensible vim configurations.
* keymaps.lua: Keyboard shortcuts for plugins and vim commands.
* plugins.lua: Packer plugin manager and plugins.
* colorscheme.lua: Sets the colorscheme for the editor.
* telescope.lua: Telescope configuration. Used for finding files, projects, and search for words in files.
* lsp/: Neovim lsp configuration.
    * handlers.lua: Lsp configuration for all servers.
    * lsp-installer.lua: Lsp installer configuration and installs server on first boot.
    * settings/
        * sumneko_lua.lua: Specific lua lsp configuration.
* cmp.lua: Neovim cmp for autocompletion and documentation window.
* treesitter.lua: Treesitter configuration for language servers.
* glow.lua: Markdown Previewer (currently doesn't work for windows)
* notify.lua: Provides nice notifications inside neovim.
* autopairs.lua: Autopair completion.
* gitsigns.lua: Show git changes on the side of the editor.
* nvimtree.lua: Configuration for file tree.
* toggleterm.lua: Configuration for toggliable terminal.
* lualine.lua: Status line configuration.
* bufferline.lua: Shows buffers like tabs.
* project.lua: Recognize project based on certain files integrates with alphavim dashboard.
* comment.lua: Helps with toggling comments between current line and next line.
* alphavim.lua: Startup dashboard for neovim.

## Performance
Currently it takes about 1.5s to load the configuration.
Need to make startup time faster.
Might switch from packer.nvim to lazy.nvim
