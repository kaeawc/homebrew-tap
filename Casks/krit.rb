cask "krit" do
  version "0.1.1-rc1"

  on_macos do
    on_arm do
      url "https://github.com/kaeawc/krit/releases/download/v0.1.1-rc1/krit_#{version}_darwin_arm64.tar.gz"
      sha256 "0973d2e7e237a592152ae5eaee1c9994982fae1ea77f3f08f745e04d65c70712"
    end
    on_intel do
      url "https://github.com/kaeawc/krit/releases/download/v0.1.1-rc1/krit_#{version}_darwin_amd64.tar.gz"
      sha256 "da2ef6d6b4f9bd33938063d8dc5cf884af5ae35921feb53b8da4be04acd542d4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kaeawc/krit/releases/download/v0.1.1-rc1/krit_#{version}_linux_amd64.tar.gz"
      sha256 "43267200ac9611b0c088d5ee97bb8e80fd3df1a66682c18857cd1e87a5d30dc1"
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
