# Chas' NeoVim Config

## Keymaps

### General Keymaps

* Leader = `<space>`
* Exit `INSERT` mode= `kj`
* Soft quit current buffer = `leader+q`
* Soft quit all buffers = `leader+Q`
* Write quit = `leader+wq`

### Split Window Keymaps

* Split window vertically = `leader+sv`
* Split window horizontally = `leader+sh`
* Make windows equal size = `leader+se`
* Close current window split= `leader+sx`
* Close active window = `leader+W`

### Tab Keymaps

* Open a new tab = `leader+to`
* Close current tab = `leader+tx`
* Goto next tab = `leader+tn`
* Goto prev tab = `leader+tp`

## Plugin Keybinds

### Vim-maximizer

* Maximize current window = `leader+sm`

### Nvim-tree

* Open/close tree = `leader+e`

### Telescope

* Search files = `leader+ff`
* Live grep = `leader+fg`

### LSP Keybinds

* Show definition and references = `leader+gf`
* Goto declaration = `leader+gD`
* View declaration and make edits in temp window = `leader+gd`
* Goto implementation = `leader+gi`
* View available code actions = `leader+ca`
* Smart rename = `leader+rn`
* Show diagnostics for line = `leader+D`
* Show diagnostics for cursor = `leader+d`
* Show documentation = `[normal mode]K`
* Show outline on RHS = `leader+o`

## Notable Changes From Stock NeoVim
* `[NORMAL]o` and `[NORMAL]O` do not enter `[INSERT]` mode upon newline creation
 
