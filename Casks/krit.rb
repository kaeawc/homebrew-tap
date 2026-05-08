cask "krit" do
  version "0.1.1-rc2"

  on_macos do
    on_arm do
      url "https://github.com/kaeawc/krit/releases/download/v0.1.1-rc2/krit_#{version}_darwin_arm64.tar.gz"
      sha256 "f9b784c6532146918feaf56c4a035e78b6ff068016aee75a0a58e3295d129033"
    end
    on_intel do
      url "https://github.com/kaeawc/krit/releases/download/v0.1.1-rc2/krit_#{version}_darwin_amd64.tar.gz"
      sha256 "a603c535aa23c13100198254b0f17094c2e9b149de77a032431abfbc1f075ebf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kaeawc/krit/releases/download/v0.1.1-rc2/krit_#{version}_linux_arm64.tar.gz"
      sha256 "5ada5880340b202c48ddce4ec64bcd35f7f168ba547b28a256d34701b446bd48"
    end
    on_intel do
      url "https://github.com/kaeawc/krit/releases/download/v0.1.1-rc2/krit_#{version}_linux_amd64.tar.gz"
      sha256 "a2ba60d4f662348ee2693927538f4c010daea3d10cd90954a238e4c576215e35"
    end
  end

  name "krit"
  desc "Fast Kotlin static analysis powered by tree-sitter"
  homepage "https://github.com/kaeawc/krit"

  binary "krit"
  binary "krit-lsp"
  binary "krit-mcp"
end
