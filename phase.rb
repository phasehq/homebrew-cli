class Phase < Formula
  desc "Securely manage your secrets and environment variables with Phase."
  homepage "https://github.com/phasehq/cli"
  url "https://github.com/phasehq/cli/releases/download/v1.17.5/phase_cli_macos_amd64_1.17.5.zip"
  sha256 "146e5a80e6270056b3a3b6a4b65ef8d3385ab15fe4f2044aa5db5a43ef668419"
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

