# OpenScreen Homebrew tap

Homebrew cask for [OpenScreen](https://github.com/getopenscreen/openscreen) — a
free and open-source screen recorder and video editor.

## Install

```sh
brew install --cask getopenscreen/openscreen/openscreen
```

## After installing

The DMGs are not code-signed or notarized, so Gatekeeper blocks the app on first
launch. `brew install --cask` does not change that — it applies the same
quarantine attribute a manual download gets. Clear it once:

```sh
xattr -rd com.apple.quarantine /Applications/Openscreen.app
```

Then grant **Screen Recording** and **Accessibility** in
**System Settings → Privacy & Security**.

## Maintenance

`Casks/openscreen.rb` is written by
[`update-homebrew-cask.yml`](https://github.com/getopenscreen/openscreen/blob/main/.github/workflows/update-homebrew-cask.yml)
in the main repository, on every stable release. Do not edit it by hand: the
next release overwrites the file wholesale.
