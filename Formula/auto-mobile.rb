class AutoMobile < Formula
  desc "Mobile device interaction automation via MCP"
  homepage "https://github.com/kaeawc/auto-mobile"
  url "https://registry.npmjs.org/@kaeawc/auto-mobile/-/auto-mobile-0.0.72.tgz"
  sha256 "4d2ca707d5c76bc400389de6718f2469eb24bc809305bff6e3d589c36556499d"
  license "Apache-2.0"

  # Track new releases from the npm registry's dist-tags. `brew livecheck`
  # (and Homebrew's autobump tooling) reads this to detect that a newer
  # version than the pinned `url` is available.
  livecheck do
    url "https://registry.npmjs.org/@kaeawc/auto-mobile"
    strategy :json do |json|
      json.dig("dist-tags", "latest")
    end
  end

  depends_on "bun"

  def install
    libexec.install Dir["*"]
    (bin/"auto-mobile").write <<~SH
      #!/bin/bash
      exec "#{formula_opt_bin("bun")}/bun" "#{libexec}/dist/src/index.js" "$@"
    SH
    chmod 0755, bin/"auto-mobile"
  end

  test do
    output = shell_output("#{bin}/auto-mobile --cli help 2>&1")
    assert_match(/Usage|help|tool/i, output)
  end
end
