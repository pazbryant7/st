# st — Bryant's Fork

A personal fork of [st](https://st.suckless.org/), the simple terminal from suckless.org, with a curated set of patches and custom defaults.

## Patches Applied

| Patch | Description |
|---|---|
| [alpha](https://st.suckless.org/patches/alpha/) | Adds transparency support via compositing |
| [anysize](https://st.suckless.org/patches/anysize/) | Allows st to fill any pixel size and center content |
| [boxdraw](https://st.suckless.org/patches/boxdraw/) | Improves rendering of box-drawing characters |
| [font2](https://st.suckless.org/patches/font2/) | Adds a fallback font for characters missing in the primary font |
| [xresources](https://st.suckless.org/patches/xresources/) | Allows runtime configuration via Xresources |
| [desktopentry](https://st.suckless.org/patches/desktopentry/) | Adds a `.desktop` entry for application launchers |
| [glyph-wide-support](https://st.suckless.org/patches/glyph_wide_support/) | Fixes rendering of wide glyphs (e.g. CJK, emoji) |
| [cycle-fonts](https://st.suckless.org/patches/cycle_fonts/) | Cycle through a list of fonts at runtime with a keybinding |
| [iso14755](https://st.suckless.org/patches/iso14755/) | Input Unicode codepoints via Ctrl+Shift+U (ISO 14755 method) |

## Custom Changes

- **Shell**: Uses `sh` as the default shell instead of `$SHELL`
- **Font**: Font is re-applied after reading Xresources, so Xresources font settings take full effect
- **Shortcuts**: Customized default keybindings

## Dependencies

- libX11
- libXft
- freetype2
- A compositor (e.g. picom) for transparency

## Installation

```sh
git clone https://github.com/<your-username>/st
cd st
# Edit config.h or configure via ~/.Xresources
sudo make clean install
```

## Configuration

You can configure st via `config.h` before building, or at runtime through `~/.Xresources`:

```
st.font: YourFont:size=12
st.alpha: 200
st.foreground: #eeeeee
st.background: #111111
```

After editing `~/.Xresources`, reload with:

```sh
xrdb ~/.Xresources
```

Then restart st. Changes take effect on the next instance.

## Credits

Based on [st](https://st.suckless.org/) by the [suckless](https://suckless.org/) community.
