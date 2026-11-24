class Spectra < Formula
  desc "Host-aware app and JVM diagnostics (macOS + Linux)"
  homepage "https://github.com/kaeawc/spectra"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kaeawc/spectra/releases/download/v0.1.2/spectra_v0.1.2_darwin_arm64.tar.gz"
      sha256 "9a4a6bc2457b665a7af52c61a1a4d2674718024e24cb227063270cf3ac76a9c9"
    end
    on_intel do
      url "https://github.com/kaeawc/spectra/releases/download/v0.1.2/spectra_v0.1.2_darwin_amd64.tar.gz"
      sha256 "5500147f5150c7dbcbe821a43c6b672e4c7e32e8a8b2c82598a5f1c6c5a56007"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kaeawc/spectra/releases/download/v0.1.2/spectra_v0.1.2_linux_arm64.tar.gz"
      sha256 "be6483765b992775153961f12af023b8314be4f2f50fad17ec72d87a21c591cf"
    end
    on_intel do
      url "https://github.com/kaeawc/spectra/releases/download/v0.1.2/spectra_v0.1.2_linux_amd64.tar.gz"
      sha256 "981751e901c8207aa4a58b49316d20b9bc2f4ceae47c032813efc692baf8f709"
    end
  end

  def install
    # The privileged helper is installed next to spectra but never enabled:
    # `sudo spectra install-helper` remains an explicit user step.
    bin.install "bin/spectra", "bin/spectra-mcp", "bin/spectra-helper"
    pkgshare.install "agent/spectra-agent.jar" if File.exist?("agent/spectra-agent.jar")
    (pkgshare/"systemd").install Dir["systemd/*.service"] if OS.linux?
    doc.install Dir["docs/*.md"]
    prefix.install "LICENSE"
    prefix.install "README.md" if File.exist?("README.md")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/spectra version")
    assert_match version.to_s, shell_output("#{bin}/spectra-mcp --version")
    assert_match version.to_s, shell_output("#{bin}/spectra-helper --version")
  end
end
