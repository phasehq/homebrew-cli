class Phase < Formula
  desc "Securely manage your secrets and environment variables with Phase."
  homepage "https://github.com/phasehq/cli"
  url "https://github.com/phasehq/cli/releases/download/v1.17.5/phase_cli_macos_amd64_1.17.5.zip"
  sha256 "e4e96f9c01dc0688f11eae38b489331220fa8f5e8b95a6a27c72c3a861036df4"
  version "1.17.5"

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

