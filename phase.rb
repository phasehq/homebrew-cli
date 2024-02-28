class Phase < Formula
  desc "Securely manage your secrets and environment variables with Phase."
  homepage "https://github.com/phasehq/cli"
  url "https://github.com/phasehq/cli/releases/download/v1.13.0/phase_cli_macos_amd64_1.13.0.zip"
  sha256 "3a93d2b3ec8061dc84fc38cd0d7ef43998b3181e87211c59d936a490c7256c66"
  version "1.13.0"

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

