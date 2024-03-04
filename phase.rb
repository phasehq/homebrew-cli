class Phase < Formula
  desc "Securely manage your secrets and environment variables with Phase."
  homepage "https://github.com/phasehq/cli"
  url "https://github.com/phasehq/cli/releases/download/v1.13.1/phase_cli_macos_amd64_1.13.1.zip"
  sha256 "db67d56a5f67176f05e5e721797505545d731748576d45ef2ffce3162ff5e253"
  version "1.13.1"

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

