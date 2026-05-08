cask "krit" do
  version "0.1.1-rc1"

  on_macos do
    on_arm do
      url "https://github.com/kaeawc/krit/releases/download/v0.1.1-rc1/krit_#{version}_darwin_arm64.tar.gz"
      sha256 "88a4c93e7892bc29004d847a580f72e9f8f6da8768adff330719f36c64dc17be"
    end
    on_intel do
      url "https://github.com/kaeawc/krit/releases/download/v0.1.1-rc1/krit_#{version}_darwin_amd64.tar.gz"
      sha256 "4b6cf4d006989259a0bf0ab9b5df5a500a1fe7e0453b800a00a109613f4e8816"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kaeawc/krit/releases/download/v0.1.1-rc1/krit_#{version}_linux_amd64.tar.gz"
      sha256 "a97f768980875d1e8853fa993d7d9baf73fc8815417ed22561c122dbdf7a32d1"
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
