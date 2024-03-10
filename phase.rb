class Phase < Formula
  desc "Securely manage your secrets and environment variables with Phase."
  homepage "https://github.com/phasehq/cli"
  url "https://github.com/phasehq/cli/releases/download/v1.14.0/phase_cli_macos_amd64_1.14.0.zip"
  sha256 "e40a94f9c5d0942b55ecbf5bd1e1734ecb5224524f734b8b4aeaf3e4cee92757"
  version "1.14.0"

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

