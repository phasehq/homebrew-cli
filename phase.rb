class Phase < Formula
  desc "Securely manage your secrets and environment variables with Phase."
  homepage "https://github.com/phasehq/cli"
  version "1.21.0"

  on_macos do
    on_arm do
      url "https://github.com/phasehq/cli/releases/download/v#{version}/phase_cli_macos_arm64_#{version}.zip"
      sha256 "cbd831d3d95571fce233980f11c6a2f21618135e6fa86a39d1dc10f04bb5d2a1"
    end

    on_intel do
      url "https://github.com/phasehq/cli/releases/download/v#{version}/phase_cli_macos_amd64_#{version}.zip"
      sha256 "7e47dd6bba3cbfd35fa365d41c6029f5478a1619699440472b55663439743e6d"
    end
  end

  def install
    # Install the phase binary
    bin.install "phase/phase"

    # Install the _internal directory in the bin directory
    bin.install "phase/_internal"

    # Set execution permissions for the phase binary
    chmod 0755, bin/"phase"
  end

  test do
    system "#{bin}/phase", "--version"
  end
end
