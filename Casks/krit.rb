cask "krit" do
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/kaeawc/krit/releases/download/v0.1.0/krit_#{version}_darwin_arm64.tar.gz"
      sha256 "1f06b7d155915d1c0eb84478cd251cdd95f79e03c40ef8a03b347b6af47b62fe"
    end
    on_intel do
      url "https://github.com/kaeawc/krit/releases/download/v0.1.0/krit_#{version}_darwin_amd64.tar.gz"
      sha256 "7c217f78c1b08a6ec06eaa8fe4955e0e3f7593ff07cb39793ffa3f84784367e0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kaeawc/krit/releases/download/v0.1.0/krit_#{version}_linux_amd64.tar.gz"
      sha256 "77e78aa5cc4455e699e9a3939cbe733f0e32225c8e630b21d588672254ef8dc6"
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
