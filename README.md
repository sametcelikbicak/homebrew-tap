# homebrew-tap

[![Stars](https://img.shields.io/github/stars/sametcelikbicak/homebrew-tap?style=social)](https://github.com/sametcelikbicak/homebrew-tap)
[![Forks](https://img.shields.io/github/forks/sametcelikbicak/homebrew-tap?style=social)](https://github.com/sametcelikbicak/homebrew-tap)
[![CI](https://github.com/sametcelikbicak/homebrew-tap/actions/workflows/test.yml/badge.svg)](https://github.com/sametcelikbicak/homebrew-tap/actions/workflows/test.yml)
[![License: MIT](https://img.shields.io/github/license/sametcelikbicak/homebrew-tap)](LICENSE)
[![Homebrew](https://img.shields.io/badge/homebrew-tap-orange?logo=homebrew)](https://brew.sh)

## Install

```bash
brew tap sametcelikbicak/tap https://github.com/sametcelikbicak/homebrew-tap
brew trust sametcelikbicak/tap      # Homebrew requires trusting third-party taps
brew install vidfix
```

## Available formulae

| Formula                                             | Description                                                  |
| --------------------------------------------------- | ------------------------------------------------------------ |
| [vidfix](https://github.com/sametcelikbicak/vidfix) | Diagnose why a video will not play and fix it in one command |

## How a formula is updated

Each tool publishes its own GitHub release. The tap mirrors it automatically:

1. The tool's release workflow packages the release tarball and its checksum.
2. The same workflow pushes the new version and checksum into `Formula/<tool>.rb` here.
3. The workflow in this repository checks the formula with `brew style` and `brew audit --strict`.

The push into this repository uses the `TAP_TOKEN` secret, a fine-grained token that is scoped to **this repository only** (contents: read and write).

## Adding a tool

1. Create `Formula/<tool>.rb` in this repository.
2. Add a release workflow to the tool's repository that updates this formula on every release.
3. The formula must pass `brew style` and `brew audit --strict` — see `.github/workflows/test.yml`.

## License

MIT — see [LICENSE](LICENSE).
