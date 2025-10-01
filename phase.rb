class Phase < Formula
  desc "Securely manage your secrets and environment variables with Phase."
  homepage "https://github.com/phasehq/cli"
  url "https://github.com/phasehq/cli/releases/download/v1.20.0/phase_cli_macos_amd64_1.20.0.zip"
  sha256 "d69f0b9d0df5b87a7514e8a62c6a49f935fdba90372b66fee82121f63096104f"
  version "1.20.0"

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

