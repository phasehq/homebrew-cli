class Phase < Formula
  desc "Securely manage your secrets and environment variables with Phase."
  homepage "https://github.com/phasehq/cli"
  url "https://github.com/phasehq/cli/releases/download/v1.18.1/phase_cli_macos_amd64_1.18.1.zip"
  sha256 "397fa1a23afc887b693b539ba0df81c9609ef3cd99a1fc6cbfc1ff759b377f31"
  version "1.18.1"

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

