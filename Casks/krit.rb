cask "krit" do
  version "0.0.0-rc1"

  on_macos do
    on_arm do
      url "https://github.com/kaeawc/krit/releases/download/v0.0.0-rc1/krit_#{version}_darwin_arm64.tar.gz"
      sha256 "e07d8a598809aec545d9bd932037e5ac220c4c224e0be7ee9f7215416ed39816"
    end
    on_intel do
      url "https://github.com/kaeawc/krit/releases/download/v0.0.0-rc1/krit_#{version}_darwin_amd64.tar.gz"
      sha256 "e526f6c9d857470af70bc176b16f7ad4e8afca5fb108e48d464ecfc7b52f5be3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kaeawc/krit/releases/download/v0.0.0-rc1/krit_#{version}_linux_amd64.tar.gz"
      sha256 "e56458d57e5afe8ea81967ea6685dc6ad654a86ca5580fcceee15ebe7ec60d69"
    end
    # Linux arm64 archive is a follow-up; the cross-toolchain on
    # ubuntu-24.04 needs sysroot fixes to build cgo cleanly.
  end

  name "krit"
  desc "Fast Kotlin static analysis powered by tree-sitter"
  homepage "https://github.com/kaeawc/krit"

  binary "krit"
  binary "krit-lsp"
  binary "krit-mcp"
end
