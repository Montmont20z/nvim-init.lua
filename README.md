# NeoVim Keybindings Reference Manual

**Leader Key:** `Space`

---

## Core Navigation & Editing

### Window Navigation
- `Ctrl+h` — Move to left window
- `Ctrl+j` — Move to bottom window
- `Ctrl+k` — Move to top window
- `Ctrl+l` — Move to right window

### Window Splitting & Resizing
- `<leader>sv` — Split window vertically
- `<leader>sh` — Split window horizontally
- `Ctrl+Up` — Increase window height
- `Ctrl+Down` — Decrease window height
- `Ctrl+Left` — Decrease window width
- `Ctrl+Right` — Increase window width

### Cursor Movement & Centering
- `n` — Next search result (centered)
- `N` — Previous search result (centered)
- `Ctrl+d` — Half page down (centered)
- `Ctrl+u` — Half page up (centered)
- `J` — Join lines and keep cursor position

### Line Movement
- `Alt+j` — Move current line down
- `Alt+k` — Move current line up
- `Alt+j` (visual) — Move selection down
- `Alt+k` (visual) — Move selection up

---

## Buffer Management

- `<leader>bn` — Next buffer
- `<leader>bp` — Previous buffer
- `<leader>bd` — Smart close buffer/tab (closes buffer or tab intelligently)
- `<leader>d` — Delete without yanking (normal/visual)

---

## Tab Management

### Basic Tab Operations
- `Shift+l` — Next tab
- `Shift+h` — Previous tab
- `<leader>tn` — New tab
- `<leader>tx` — Close current tab

### Advanced Tab Operations
- `<leader>tO` — Open file in new tab (with prompt)
- `<leader>td` — Duplicate current tab
- `<leader>tm` — Move tab (prompts for position)
- `<leader>t>` — Move tab right
- `<leader>t<` — Move tab left
- `<leader>tr` — Close all tabs to the right
- `<leader>tL` — Close all tabs to the left

---

## File Explorer (nvim-tree)

- `<leader>e` — Toggle file explorer
- `<leader>ef` — Focus file explorer
- `<leader>ff` — Reveal current file in tree

---

## Text Manipulation

### Indentation
- `<` (visual) — Indent left and reselect
- `>` (visual) — Indent right and reselect

### Comments
- `Ctrl+/` — Toggle line comment (normal mode)
- `Ctrl+/` — Toggle selection comment (visual mode)

### Text Wrapping
- `<leader>z` — Toggle line wrap with visual indicators

---

## LSP (Language Server Protocol)

### Navigation
- `gD` — Go to definition
- `gs` — Go to declaration
- `gr` — Show references
- `gi` — Go to implementation
- `Ctrl+LeftClick` — Go to definition (mouse)

### Information
- `K` — Show hover documentation
- `Ctrl+k` — Show signature help

### Code Actions
- `<leader>ca` — Show code actions
- `<leader>rn` — Rename symbol
- `<leader>fm` — Format current file

### Diagnostics
- `<leader>nd` — Next diagnostic
- `<leader>pd` — Previous diagnostic
- `<leader>do` — Open diagnostic float
- `<leader>dp` — Toggle warnings on/off (errors always shown)
- `<leader>q` — Open diagnostics list

---

## Telescope (Fuzzy Finder)

- `<leader>ff` — Find files
- `<leader>fg` — Live grep (search in files)
- `<leader>fb` — Switch buffers
- `<leader>fs` — Search workspace symbols

---

## Terminal

- `<leader>t` — Toggle floating terminal
- `Esc` (terminal mode) — Close floating terminal

---

## Utilities

### File Operations
- `<leader>pa` — Copy full file path to clipboard
- `<leader>rc` — Edit config file (init.lua)

### Search & Display
- `<leader>c` — Clear search highlights

---

## Completion (Insert Mode)

- `Tab` — Next completion item / expand snippet / trigger completion
- `Shift+Tab` — Previous completion item / jump back in snippet
- `Ctrl+Space` — Trigger completion manually
- `Enter` — Confirm completion

---

## Custom Commands

- `:FormatCode` — Format current file (Python with black, Shell with shfmt)
- `:LspInfo` — Show attached LSP client information
- `:DiagToggleWarnings` — Toggle diagnostic warnings display

---

## Quick Reference Card

| Category | Key | Action |
|----------|-----|--------|
| **Leader** | `Space` | Primary modifier |
| **Navigate** | `Ctrl+hjkl` | Move between windows |
| **Search** | `<leader>ff` | Find files |
| **Search** | `<leader>fg` | Search in files |
| **Files** | `<leader>e` | Toggle file tree |
| **Terminal** | `<leader>t` | Toggle terminal |
| **LSP** | `gD` | Go to definition |
| **LSP** | `K` | Show documentation |
| **Format** | `<leader>fm` | Format file |
| **Tabs** | `Shift+hl` | Switch tabs |
| **Comment** | `Ctrl+/` | Toggle comment |

---

## Tips

1. All `<leader>` commands use `Space` as the prefix
2. Most navigation commands center the screen for better visibility
3. The floating terminal persists across toggles
4. LSP features only work when a language server is attached
5. Diagnostics can be filtered to show only errors with `<leader>dp`
6. File formatting requires `black` (Python) or `shfmt` (Shell) installed
