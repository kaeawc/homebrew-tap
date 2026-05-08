# homebrew-tap

Homebrew tap for [@kaeawc](https://github.com/kaeawc) projects.

## Usage

```sh
brew tap kaeawc/tap
brew install <formula>
```

Or install a single formula directly:

```sh
brew install kaeawc/tap/<formula>
```

## Formulae

Formulae live in `Formula/`. Each is a Ruby class subclassing `Formula`.

## Adding a formula

1. Create `Formula/<name>.rb`.
2. Set `url` to a tagged source tarball and `sha256` to its checksum:
   ```sh
   curl -sL https://github.com/kaeawc/<repo>/archive/refs/tags/v0.1.0.tar.gz | shasum -a 256
   ```
3. Test locally:
   ```sh
   brew install --build-from-source ./Formula/<name>.rb
   brew test <name>
   brew audit --strict --new <name>
   ```
4. Commit and push.
