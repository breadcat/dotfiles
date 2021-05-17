# Dotfiles Repository

These configuration files are all managed using a bare git repository, [as outlined here](https://www.atlassian.com/git/tutorials/dotfiles).

- Hardware: `thinkpad x230t`
- Distro: `archlinux`

- Audio player: `cmus`
- AUR helper: `paru`
- Chat client: `gomuks`
- Colour Scheme: [default @ terminal.sexy](http://terminal.sexy/)
- Document viewer: `mupdf`
- Emulation: `retroarch`
- File manager: `lf`
- Image viewer: `imv`
- Mail reader: `neomutt`
- Password manager: `rbw`
- RSS reader: `newsboat`
- Shell: `fish`
- Terminal emulator: `alacritty`
- Text editor: `neovim`
- Torrent client: `rtorrent`
- Video player: `mpv`
- Wallpaper: `#5e686d`
- Web browser: `qutebrowser`
- Window manager: `sway`

## Deploying

```
git clone https://git.minskio.co.uk/cgit.cgi/dotfiles/ && cd dotfiles
shopt -s dotglob && for i in *; do rsync -a "$i" "$HOME" --remove-source-files; done && rm -r .
```