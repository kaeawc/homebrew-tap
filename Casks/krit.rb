cask "krit" do
  version "0.1.1-rc3"

  on_macos do
    on_arm do
      url "https://github.com/kaeawc/krit/releases/download/v0.1.1-rc3/krit_#{version}_darwin_arm64.tar.gz"
      sha256 "161b0c0fa94efe452f4d8dec54558c1df518bd4edce1b948a567954e7d39f463"
    end
    on_intel do
      url "https://github.com/kaeawc/krit/releases/download/v0.1.1-rc3/krit_#{version}_darwin_amd64.tar.gz"
      sha256 "9971a039ca7561c3425d30f2684660813a6bb3a739524d569efc6c42d03a9345"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kaeawc/krit/releases/download/v0.1.1-rc3/krit_#{version}_linux_arm64.tar.gz"
      sha256 "8ff2b7fbbd7da6f3048bed0c4af6ecb38b77e337a0ea90e6e9cea57d239b8752"
    end
    on_intel do
      url "https://github.com/kaeawc/krit/releases/download/v0.1.1-rc3/krit_#{version}_linux_amd64.tar.gz"
      sha256 "7df27b0538d20b82230f4358cac3755580badba9e6573218aa298a8c60bd5c58"
    end
  end

  name "krit"
  desc "Fast Kotlin static analysis powered by tree-sitter"
  homepage "https://github.com/kaeawc/krit"

  binary "krit"
  binary "krit-lsp"
  binary "krit-mcp"
end
