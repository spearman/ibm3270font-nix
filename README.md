# ibm3270font

This derivation contains truetype font files (`.ttf` and `.otf`) for IBM 3270,
IBM 3270 Narrow, and IBM 3270 vector fonts, built from
<https://github.com/rbanffy/3270font> v.1.2.23.

To add the fonts in the system configuration (`/etc/nixos/configuration.nix`),
add the path of this derivation to the list of paths in the option
`fonts.fonts`. Fontconfig will then be able to find the fonts which can be
verified in the output of `$ fc-list`.
