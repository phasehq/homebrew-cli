class Phase < Formula
  desc "Securely manage your secrets and environment variables with Phase."
  homepage "https://github.com/phasehq/cli"
  url "https://github.com/phasehq/cli/releases/download/v1.15.0/phase_cli_macos_amd64_1.15.0.zip"
  sha256 "0acda23fec65cd6f810b6ae3bcfbccfad09c7759e0470a3bf21fa8ddb6139fb2"
  version "1.15.0"

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

