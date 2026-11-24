cask "krit" do
  version "0.4.0"

  on_macos do
    on_arm do
      sha256 "0f34caa35c36a2d188e65d7138bf6fedae272dc414b825835ae924744d8b8cef"
      url "https://github.com/kaeawc/krit/releases/download/v0.4.0/krit_#{version}_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "40407614695e9c01176cb4f7006a583d824c489ebe1b8a7eeef68c75a8aed44e"
      url "https://github.com/kaeawc/krit/releases/download/v0.4.0/krit_#{version}_darwin_amd64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "843849a0f1aca85279b40cc6020eb7d9fc1302f2585e5da5050b597edffa59b1"
      url "https://github.com/kaeawc/krit/releases/download/v0.4.0/krit_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "4720196534b41a41a211103382289eeff1cabbd65522d6055fb81fe9d42944a7"
      url "https://github.com/kaeawc/krit/releases/download/v0.4.0/krit_#{version}_linux_amd64.tar.gz"
    end
  end

  name "krit"
  desc "Fast Kotlin static analysis powered by tree-sitter"
  homepage "https://github.com/kaeawc/krit"

  binary "krit"
  binary "krit-lsp"
  binary "krit-mcp"
end
