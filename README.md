# ibm3270font

This derivation contains truetype font files (`.ttf` and `.otf`) for IBM 3270,
IBM 3270 Narrow, and IBM 3270 vector fonts, built from
<https://github.com/rbanffy/3270font> v.1.2.23.

To add the fonts in the system configuration (`/etc/nixos/configuration.nix`),
add the path of this derivation to the list of paths in the option
`fonts.fonts`. Fontconfig will then be able to find the fonts which can be
verified in the output of `$ fc-list`.


## Installation

To install at the system level, add the following to the
`fonts.fonts` list in `/etc/nixos/configuration.nix`:

```
  fonts.fonts = [
    (import (fetchgit {
      url = git://github.com/spearman/ibm3270font-nix.git;
      rev = "<revision-hash>";
      sha256 = "<source-hash>";
    }))
  ];
```

where `rev` is the hash of the desired git commit and `sha256` is the source
hash which can be gotten for a particular revision with the `nix-prefetch-hash`
tool:

```
$ nix-prefetch-git --url git://github.com/spearman/ibm3270font-nix.git --rev <revision-hash>
```
