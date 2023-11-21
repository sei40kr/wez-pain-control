# wez-pain-control

[WezTerm](https://wezfurlong.org/wezterm) port of [tmux-pain-control](https://github.com/tmux-plugins/tmux-pain-control).

## Installation

Clone this repository into your `$XDG_CONFIG_HOME/wezterm` directory:

```sh
git clone https://github.com/sei40kr/wez-pain-control.git $XDG_CONFIG_HOME/wezterm
```

## Usage

```lua
local wezterm = require("wezterm")

local config = {}

if wezterm.config_builder then
    config = wezterm.config_builder()
end

-- Add these lines:
require("wez-pain-control.plugin").apply_to_config(config, {})

return config
```

## Options

**Default options**

```lua
require("wez-pain-control.plugin").apply_to_config(config, {
    pane_resize = 5,
})
```

---

| Option        | Default | Description                   |
| ------------- | ------- | ----------------------------- |
| `pane_resize` | `5`     | The amount of cells to resize |

## Key Bindings

### Navigation

| Key Binding                 | Action                   |
| --------------------------- | ------------------------ |
| `leader+h`, `leader+ctrl+h` | Select pane on the left  |
| `leader+j`, `leader+ctrl+j` | Select pane below        |
| `leader+k`, `leader+ctrl+k` | Select pane above        |
| `leader+l`, `leader+ctrl+l` | Select pane on the right |

### Resizing Panes

| Key Binding      | Action                       |
| ---------------- | ---------------------------- |
| `leader+shift+h` | Resize to the left           |
| `leader+shift+j` | Resize in the down direction |
| `leader+shift+k` | Resize in the up direction   |
| `leader+shift+l` | Resize to the right          |

These mappings are repeatable.

### Splitting Panes

| Key Binding | Action                                                                |
| ----------- | --------------------------------------------------------------------- |
| `leader+-`  | Split the current pane vertically (splits into two, top and bottom)   |
| `leader+\|` | Split the current pane horizontally (splits into two, left and right) |
| `leader+\`  | Unsupported                                                           |
| `leader+_`  | Unsupported                                                           |

### Swapping Windows

| Key Binding | Action                                         |
| ----------- | ---------------------------------------------- |
| `leader+<`  | Move the current tab one position to the left  |
| `leader+>`  | Move the current tab one position to the right |
