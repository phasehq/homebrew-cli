class Phase < Formula
  desc "Securely manage your secrets and environment variables with Phase."
  homepage "https://github.com/phasehq/cli"
  url "https://github.com/phasehq/cli/releases/download/v1.19.0/phase_cli_macos_amd64_1.19.0.zip"
  sha256 "cf531f80e9ebb3e7d25866f6d277a85cdab7dc08e57241b6021e169e313cca04"
  version "1.19.0"

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

