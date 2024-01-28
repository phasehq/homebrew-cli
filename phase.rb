class Phase < Formula
  desc "Securely manage your secrets and environment variables with Phase."
  homepage "https://github.com/phasehq/cli"
  url "https://github.com/phasehq/cli/releases/download/v1.11.3/phase_cli_macos_amd64_1.11.3.zip"
  sha256 "1ecd5469ddb7d9004dc518d8b9cc5665d61cc0138a336b75294524d07ee3e893"
  version "1.11.3"

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

