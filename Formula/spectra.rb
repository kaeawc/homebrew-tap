class Spectra < Formula
  desc "Host-aware app and JVM diagnostics (macOS + Linux)"
  homepage "https://github.com/kaeawc/spectra"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kaeawc/spectra/releases/download/v0.1.3/spectra_v0.1.3_darwin_arm64.tar.gz"
      sha256 "76010d91bbbba382bb9569b89bfd775fe0b4db73c348cbc6f8f9aabb8dc5e8f7"
    end
    on_intel do
      url "https://github.com/kaeawc/spectra/releases/download/v0.1.3/spectra_v0.1.3_darwin_amd64.tar.gz"
      sha256 "67f105759218c4621ebfb6f8fac1b6b1bb6db4b750a9a50fccb87dd6ee94ac12"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kaeawc/spectra/releases/download/v0.1.3/spectra_v0.1.3_linux_arm64.tar.gz"
      sha256 "2b6ffb63fe8f945a10969c56aa2ef188c5e0c595af1f4b1054535e3f01997964"
    end
    on_intel do
      url "https://github.com/kaeawc/spectra/releases/download/v0.1.3/spectra_v0.1.3_linux_amd64.tar.gz"
      sha256 "c90aa774e11c848c9afeb902e08856080d5b02d5563dc82a33cc6a8e57f5229a"
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
