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
brew install rolecraft
```

## Available formulae

| Formula                                               | Description                                                                  | Source                                                                        |
| ----------------------------------------------------- | ---------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| [vidfix](https://github.com/sametcelikbicak/vidfix)   | Diagnose why a video will not play and fix it in one command                 | [sametcelikbicak/vidfix](https://github.com/sametcelikbicak/vidfix)             |
| [rolecraft](https://github.com/rolecraft-sh/rolecraft) | Package manager for AI agents — install, test, publish and manage skills      | [rolecraft-sh/rolecraft](https://github.com/rolecraft-sh/rolecraft)             |

Each formula is published from its own repository and mirrored here automatically, so the formula version always matches the released version.

> `rolecraft` is a Node.js CLI and needs Node.js >= 22 in `PATH` (nvm, asdf or a system install). The Homebrew formula does not pull in Homebrew's own `node`, which would add 19 dependencies and has no bottle for older macOS releases.

## How a formula is updated

Each tool publishes its own release. The tap mirrors it automatically:

1. The tool's release workflow publishes the release artifact (a tarball or an npm package).
2. The same workflow pushes the new version and checksum into `Formula/<tool>.rb` here.
3. The workflow in this repository checks the formula with `brew style` and `brew audit --strict`.

The push into this repository uses the `TAP_TOKEN` secret, a fine-grained token that is scoped to **this repository only** (contents: read and write).

## Adding a tool

1. Create `Formula/<tool>.rb` in this repository.
2. Add a release workflow to the tool's repository that updates this formula on every release.
3. The formula must pass `brew style` and `brew audit --strict` — see `.github/workflows/test.yml`.

## License

MIT — see [LICENSE](LICENSE).
