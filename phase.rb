class Phase < Formula
  desc "Securely manage your secrets and environment variables with Phase."
  homepage "https://github.com/phasehq/cli"
  url "https://github.com/phasehq/cli/releases/download/v1.17.4/phase_cli_macos_amd64_1.17.4.zip"
  sha256 "00401d47deac1c3d1d38e07573d241e80f905e9b197c18050ee4d1e1cc0c4aee"
  version "1.17.4"

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

